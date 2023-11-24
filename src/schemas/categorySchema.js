const Joi = require('joi');

const langDetector = require('../helpers/langDetector');

const validateCategoryNameEN = async (value, helpers) => {
  try {
    await langDetector.checkLanguageText(value, 'en', 90);
    return value;
  } catch (error) {
    return helpers.error('any.custom');
  }
};

const validateCategoryNameMM = async (value, helpers) => {
  try {
    await langDetector.checkLanguageText(value, 'my', 90);
    return value;
  } catch (error) {
    return helpers.error('any.custom');
  }
};

const validateCategoryNameZH = async (value, helpers) => {
  try {
    await langDetector.checkLanguageText(value, 'zh', 90);
    return value;
  } catch (error) {
    return helpers.error('any.custom');
  }
};

module.exports = {
  categorySchema: {
    store: Joi.object({
      categoryName_en: Joi.string()
        .custom(validateCategoryNameEN)
        .messages({ 'any.custom': 'Invalid English text' }),
      categoryName_mm: Joi.string()
        .custom(validateCategoryNameMM)
        .messages({ 'any.custom': 'Invalid Burmese text' }),
      categoryName_zh: Joi.string()
        .custom(validateCategoryNameZH)
        .messages({ 'any.custom': 'Invalid Chinese text' }),
    }),
  },
};
