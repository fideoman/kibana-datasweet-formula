import { capitalize, map } from 'lodash';
import { MetricAggType } from 'ui/agg_types/metrics/metric_agg_type';
import { FormulaParamEditor } from './formula_param_editor.tsx';
import { FormatterParamEditor } from './formatter_param_editor.tsx';
import { NumeralParamEditor } from './numeral_param_editor.tsx';
import { npStart } from 'ui/new_platform';

const formatters = map(['number', 'percent', 'boolean', 'bytes', 'numeral'], f => {
  return { id: f, title: capitalize(f) };
});

export const formulaMetricAgg = new MetricAggType({
  name: 'datasweet_formula',
  title: 'Datasweet Formula',
  subtype: 'Calculated Metrics',
  hasNoDsl: true,
  makeLabel: function (aggConfig) {
    return 'Formula ' + aggConfig.id;
  },
  params: [
    {
      name: 'formula',
      editorComponent: FormulaParamEditor
    },
    {
      name: 'formatter',
      editorComponent: FormatterParamEditor,
      default: 'number',
      options: {
        formatters
      },
    },
    {
      name: 'numeralFormat',
      editorComponent: NumeralParamEditor,
    }
  ],
  getFormat: function (agg) {
    const formatterId = agg.params.formatter;
    if (!formatterId) {
      return npStart.plugins.data.fieldFormats.getDefaultInstance('number');
    }

    if (formatterId === 'numeral') {
      const format =  agg.params.numeralFormat;
      if (!format) {
        return npStart.plugins.data.fieldFormats.getDefaultInstance('number');
      }

      const FieldFormat = npStart.plugins.data.fieldFormats.getType('number');
      const f = new FieldFormat({ pattern: format });
      return f;
    }
    return npStart.plugins.data.fieldFormats.getInstance(formatterId);
  },
  getValue: function () {
    return null;
  }
});
