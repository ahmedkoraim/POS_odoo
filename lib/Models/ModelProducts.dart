class ModelProducts {
  ModelProducts({
      this.endpoint, 
      this.result,});

  ModelProducts.fromJson(dynamic json) {
    endpoint = json['endpoint'];
    if (json['result'] != null) {
      result = [];
      json['result'].forEach((v) {
        result?.add(Result.fromJson(v));
      });
    }
  }
  String? endpoint;
  List<Result>? result;
ModelProducts copyWith({  String? endpoint,
  List<Result>? result,
}) => ModelProducts(  endpoint: endpoint ?? this.endpoint,
  result: result ?? this.result,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['endpoint'] = endpoint;
    if (result != null) {
      map['result'] = result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Result {
  Result({
      this.lastUpdate, 
      this.active, 
      this.activityDateDeadline, 
      this.activityIds, 
      this.activityState, 
      this.activitySummary, 
      this.activityTypeId, 
      this.activityUserId, 
      this.attributeLineIds, 
      this.attributeValueIds, 
      this.availableInPos, 
      this.barcode, 
      this.categId, 
      this.code, 
      this.color, 
      this.companyId, 
      this.costCurrencyId, 
      this.costMethod, 
      this.createDate, 
      this.createUid, 
      this.currencyId, 
      this.defaultCode, 
      this.description, 
      this.descriptionPicking, 
      this.descriptionPickingin, 
      this.descriptionPickingout, 
      this.descriptionPurchase, 
      this.descriptionSale, 
      this.displayName, 
      this.expensePolicy, 
      this.hideExpensePolicy, 
      this.id, 
      this.image, 
      this.imageMedium, 
      this.imageSmall, 
      this.imageVariant, 
      this.incomingQty, 
      this.invoicePolicy, 
      this.isProductVariant, 
      this.itemIds, 
      this.listPrice, 
      this.locationId, 
      this.lstPrice, 
      this.messageAttachmentCount, 
      this.messageChannelIds, 
      this.messageFollowerIds, 
      this.messageHasError, 
      this.messageHasErrorCounter, 
      this.messageIds, 
      this.messageIsFollower, 
      this.messageMainAttachmentId, 
      this.messageNeedaction, 
      this.messageNeedactionCounter, 
      this.messagePartnerIds, 
      this.messageUnread, 
      this.messageUnreadCounter, 
      this.name, 
      this.nbrReorderingRules, 
      this.optionalProductIds, 
      this.orderpointIds, 
      this.outgoingQty, 
      this.packagingIds, 
      this.partnerRef, 
      this.posCategId, 
      this.price, 
      this.priceExtra, 
      this.pricelistId, 
      this.pricelistItemIds, 
      this.productTemplateAttributeValueIds, 
      this.productTmplId, 
      this.productVariantCount, 
      this.productVariantId, 
      this.productVariantIds, 
      this.propertyAccountCreditorPriceDifference, 
      this.propertyAccountExpenseId, 
      this.propertyAccountIncomeId, 
      this.propertyCostMethod, 
      this.propertyStockAccountInput, 
      this.propertyStockAccountOutput, 
      this.propertyStockInventory, 
      this.propertyStockProduction, 
      this.propertyValuation, 
      this.purchaseLineWarn, 
      this.purchaseLineWarnMsg, 
      this.purchaseMethod, 
      this.purchaseOk, 
      this.purchasedProductQty, 
      this.qtyAtDate, 
      this.qtyAvailable, 
      this.rental, 
      this.reorderingMaxQty, 
      this.reorderingMinQty, 
      this.responsibleId, 
      this.routeFromCategIds, 
      this.routeIds, 
      this.saleDelay, 
      this.saleLineWarn, 
      this.saleLineWarnMsg, 
      this.saleOk, 
      this.salesCount, 
      this.sellerIds, 
      this.sequence, 
      this.serviceToPurchase, 
      this.serviceType, 
      this.standardPrice, 
      this.stockFifoManualMoveIds, 
      this.stockFifoRealTimeAmlIds, 
      this.stockMoveIds, 
      this.stockQuantIds, 
      this.stockValue, 
      this.stockValueCurrencyId, 
      this.supplierTaxesId, 
      this.taxesId, 
      this.toWeight, 
      this.tracking, 
      this.type, 
      this.uomId, 
      this.uomName, 
      this.uomPoId, 
      this.validArchivedVariantIds, 
      this.validExistingVariantIds, 
      this.validProductAttributeIds, 
      this.validProductAttributeValueIds, 
      this.validProductAttributeValueWnvaIds, 
      this.validProductAttributeWnvaIds, 
      this.validProductTemplateAttributeLineIds, 
      this.validProductTemplateAttributeLineWnvaIds, 
      this.valuation, 
      this.variantSellerIds, 
      this.virtualAvailable, 
      this.volume, 
      this.warehouseId, 
      this.websiteMessageIds, 
      this.weight, 
      this.weightUomId, 
      this.weightUomName, 
      this.writeDate, 
      this.writeUid,});

  Result.fromJson(dynamic json) {
    lastUpdate = json['__last_update'];
    active = json['active'];
    activityDateDeadline = json['activity_date_deadline'];
    if (json['activity_ids'] != null) {
      activityIds = [];
      json['activity_ids'].forEach((v) {
        activityIds?.add(Dynamic.fromJson(v));
      });
    }
    activityState = json['activity_state'];
    activitySummary = json['activity_summary'];
    activityTypeId = json['activity_type_id'];
    activityUserId = json['activity_user_id'];
    if (json['attribute_line_ids'] != null) {
      attributeLineIds = [];
      json['attribute_line_ids'].forEach((v) {
        attributeLineIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['attribute_value_ids'] != null) {
      attributeValueIds = [];
      json['attribute_value_ids'].forEach((v) {
        attributeValueIds?.add(Dynamic.fromJson(v));
      });
    }
    availableInPos = json['available_in_pos'];
    barcode = json['barcode'];
    categId = json['categ_id'] != null ? json['categ_id'].cast<num>() : [];
    code = json['code'];
    color = json['color'];
    companyId = json['company_id'] != null ? json['company_id'].cast<num>() : [];
    costCurrencyId = json['cost_currency_id'] != null ? json['cost_currency_id'].cast<num>() : [];
    costMethod = json['cost_method'];
    createDate = json['create_date'];
    createUid = json['create_uid'] != null ? json['create_uid'].cast<num>() : [];
    currencyId = json['currency_id'] != null ? json['currency_id'].cast<num>() : [];
    defaultCode = json['default_code'];
    description = json['description'];
    descriptionPicking = json['description_picking'];
    descriptionPickingin = json['description_pickingin'];
    descriptionPickingout = json['description_pickingout'];
    descriptionPurchase = json['description_purchase'];
    descriptionSale = json['description_sale'];
    displayName = json['display_name'];
    expensePolicy = json['expense_policy'];
    hideExpensePolicy = json['hide_expense_policy'];
    id = json['id'];
    image = json['image'];
    imageMedium = json['image_medium'];
    imageSmall = json['image_small'];
    imageVariant = json['image_variant'];
    incomingQty = json['incoming_qty'];
    invoicePolicy = json['invoice_policy'];
    isProductVariant = json['is_product_variant'];
    if (json['item_ids'] != null) {
      itemIds = [];
      json['item_ids'].forEach((v) {
        itemIds?.add(Dynamic.fromJson(v));
      });
    }
    listPrice = json['list_price'];
    locationId = json['location_id'];
    lstPrice = json['lst_price'];
    messageAttachmentCount = json['message_attachment_count'];
    if (json['message_channel_ids'] != null) {
      messageChannelIds = [];
      json['message_channel_ids'].forEach((v) {
        messageChannelIds?.add(Dynamic.fromJson(v));
      });
    }
    messageFollowerIds = json['message_follower_ids'] != null ? json['message_follower_ids'].cast<num>() : [];
    messageHasError = json['message_has_error'];
    messageHasErrorCounter = json['message_has_error_counter'];
    messageIds = json['message_ids'] != null ? json['message_ids'].cast<num>() : [];
    messageIsFollower = json['message_is_follower'];
    messageMainAttachmentId = json['message_main_attachment_id'];
    messageNeedaction = json['message_needaction'];
    messageNeedactionCounter = json['message_needaction_counter'];
    messagePartnerIds = json['message_partner_ids'] != null ? json['message_partner_ids'].cast<num>() : [];
    messageUnread = json['message_unread'];
    messageUnreadCounter = json['message_unread_counter'];
    name = json['name'];
    nbrReorderingRules = json['nbr_reordering_rules'];
    if (json['optional_product_ids'] != null) {
      optionalProductIds = [];
      json['optional_product_ids'].forEach((v) {
        optionalProductIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['orderpoint_ids'] != null) {
      orderpointIds = [];
      json['orderpoint_ids'].forEach((v) {
        orderpointIds?.add(Dynamic.fromJson(v));
      });
    }
    outgoingQty = json['outgoing_qty'];
    if (json['packaging_ids'] != null) {
      packagingIds = [];
      json['packaging_ids'].forEach((v) {
        packagingIds?.add(Dynamic.fromJson(v));
      });
    }
    partnerRef = json['partner_ref'];
    posCategId = json['pos_categ_id'];
    price = json['price'];
    priceExtra = json['price_extra'];
    pricelistId = json['pricelist_id'];
    if (json['pricelist_item_ids'] != null) {
      pricelistItemIds = [];
      json['pricelist_item_ids'].forEach((v) {
        pricelistItemIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['product_template_attribute_value_ids'] != null) {
      productTemplateAttributeValueIds = [];
      json['product_template_attribute_value_ids'].forEach((v) {
        productTemplateAttributeValueIds?.add(Dynamic.fromJson(v));
      });
    }
    productTmplId = json['product_tmpl_id'] != null ? json['product_tmpl_id'].cast<num>() : [];
    productVariantCount = json['product_variant_count'];
    productVariantId = json['product_variant_id'] != null ? json['product_variant_id'].cast<num>() : [];
    productVariantIds = json['product_variant_ids'] != null ? json['product_variant_ids'].cast<num>() : [];
    propertyAccountCreditorPriceDifference = json['property_account_creditor_price_difference'];
    propertyAccountExpenseId = json['property_account_expense_id'];
    propertyAccountIncomeId = json['property_account_income_id'];
    propertyCostMethod = json['property_cost_method'];
    propertyStockAccountInput = json['property_stock_account_input'];
    propertyStockAccountOutput = json['property_stock_account_output'];
    propertyStockInventory = json['property_stock_inventory'] != null ? json['property_stock_inventory'].cast<num>() : [];
    propertyStockProduction = json['property_stock_production'] != null ? json['property_stock_production'].cast<num>() : [];
    propertyValuation = json['property_valuation'];
    purchaseLineWarn = json['purchase_line_warn'];
    purchaseLineWarnMsg = json['purchase_line_warn_msg'];
    purchaseMethod = json['purchase_method'];
    purchaseOk = json['purchase_ok'];
    purchasedProductQty = json['purchased_product_qty'];
    qtyAtDate = json['qty_at_date'];
    qtyAvailable = json['qty_available'];
    rental = json['rental'];
    reorderingMaxQty = json['reordering_max_qty'];
    reorderingMinQty = json['reordering_min_qty'];
    responsibleId = json['responsible_id'] != null ? json['responsible_id'].cast<num>() : [];
    if (json['route_from_categ_ids'] != null) {
      routeFromCategIds = [];
      json['route_from_categ_ids'].forEach((v) {
        routeFromCategIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['route_ids'] != null) {
      routeIds = [];
      json['route_ids'].forEach((v) {
        routeIds?.add(Dynamic.fromJson(v));
      });
    }
    saleDelay = json['sale_delay'];
    saleLineWarn = json['sale_line_warn'];
    saleLineWarnMsg = json['sale_line_warn_msg'];
    saleOk = json['sale_ok'];
    salesCount = json['sales_count'];
    if (json['seller_ids'] != null) {
      sellerIds = [];
      json['seller_ids'].forEach((v) {
        sellerIds?.add(Dynamic.fromJson(v));
      });
    }
    sequence = json['sequence'];
    serviceToPurchase = json['service_to_purchase'];
    serviceType = json['service_type'];
    standardPrice = json['standard_price'];
    if (json['stock_fifo_manual_move_ids'] != null) {
      stockFifoManualMoveIds = [];
      json['stock_fifo_manual_move_ids'].forEach((v) {
        stockFifoManualMoveIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['stock_fifo_real_time_aml_ids'] != null) {
      stockFifoRealTimeAmlIds = [];
      json['stock_fifo_real_time_aml_ids'].forEach((v) {
        stockFifoRealTimeAmlIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['stock_move_ids'] != null) {
      stockMoveIds = [];
      json['stock_move_ids'].forEach((v) {
        stockMoveIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['stock_quant_ids'] != null) {
      stockQuantIds = [];
      json['stock_quant_ids'].forEach((v) {
        stockQuantIds?.add(Dynamic.fromJson(v));
      });
    }
    stockValue = json['stock_value'];
    stockValueCurrencyId = json['stock_value_currency_id'] != null ? json['stock_value_currency_id'].cast<num>() : [];
    if (json['supplier_taxes_id'] != null) {
      supplierTaxesId = [];
      json['supplier_taxes_id'].forEach((v) {
        supplierTaxesId?.add(Dynamic.fromJson(v));
      });
    }
    if (json['taxes_id'] != null) {
      taxesId = [];
      json['taxes_id'].forEach((v) {
        taxesId?.add(Dynamic.fromJson(v));
      });
    }
    toWeight = json['to_weight'];
    tracking = json['tracking'];
    type = json['type'];
    uomId = json['uom_id'] != null ? json['uom_id'].cast<num>() : [];
    uomName = json['uom_name'];
    uomPoId = json['uom_po_id'] != null ? json['uom_po_id'].cast<num>() : [];
    if (json['valid_archived_variant_ids'] != null) {
      validArchivedVariantIds = [];
      json['valid_archived_variant_ids'].forEach((v) {
        validArchivedVariantIds?.add(Dynamic.fromJson(v));
      });
    }
    validExistingVariantIds = json['valid_existing_variant_ids'] != null ? json['valid_existing_variant_ids'].cast<num>() : [];
    if (json['valid_product_attribute_ids'] != null) {
      validProductAttributeIds = [];
      json['valid_product_attribute_ids'].forEach((v) {
        validProductAttributeIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['valid_product_attribute_value_ids'] != null) {
      validProductAttributeValueIds = [];
      json['valid_product_attribute_value_ids'].forEach((v) {
        validProductAttributeValueIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['valid_product_attribute_value_wnva_ids'] != null) {
      validProductAttributeValueWnvaIds = [];
      json['valid_product_attribute_value_wnva_ids'].forEach((v) {
        validProductAttributeValueWnvaIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['valid_product_attribute_wnva_ids'] != null) {
      validProductAttributeWnvaIds = [];
      json['valid_product_attribute_wnva_ids'].forEach((v) {
        validProductAttributeWnvaIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['valid_product_template_attribute_line_ids'] != null) {
      validProductTemplateAttributeLineIds = [];
      json['valid_product_template_attribute_line_ids'].forEach((v) {
        validProductTemplateAttributeLineIds?.add(Dynamic.fromJson(v));
      });
    }
    if (json['valid_product_template_attribute_line_wnva_ids'] != null) {
      validProductTemplateAttributeLineWnvaIds = [];
      json['valid_product_template_attribute_line_wnva_ids'].forEach((v) {
        validProductTemplateAttributeLineWnvaIds?.add(Dynamic.fromJson(v));
      });
    }
    valuation = json['valuation'];
    if (json['variant_seller_ids'] != null) {
      variantSellerIds = [];
      json['variant_seller_ids'].forEach((v) {
        variantSellerIds?.add(Dynamic.fromJson(v));
      });
    }
    virtualAvailable = json['virtual_available'];
    volume = json['volume'];
    warehouseId = json['warehouse_id'];
    if (json['website_message_ids'] != null) {
      websiteMessageIds = [];
      json['website_message_ids'].forEach((v) {
        websiteMessageIds?.add(Dynamic.fromJson(v));
      });
    }
    weight = json['weight'];
    weightUomId = json['weight_uom_id'] != null ? json['weight_uom_id'].cast<num>() : [];
    weightUomName = json['weight_uom_name'];
    writeDate = json['write_date'];
    writeUid = json['write_uid'] != null ? json['write_uid'].cast<num>() : [];
  }
  String? lastUpdate;
  bool? active;
  bool? activityDateDeadline;
  List<dynamic>? activityIds;
  bool? activityState;
  bool? activitySummary;
  bool? activityTypeId;
  bool? activityUserId;
  List<dynamic>? attributeLineIds;
  List<dynamic>? attributeValueIds;
  bool? availableInPos;
  bool? barcode;
  List<num>? categId;
  String? code;
  num? color;
  List<num>? companyId;
  List<num>? costCurrencyId;
  String? costMethod;
  String? createDate;
  List<num>? createUid;
  List<num>? currencyId;
  String? defaultCode;
  bool? description;
  bool? descriptionPicking;
  bool? descriptionPickingin;
  bool? descriptionPickingout;
  bool? descriptionPurchase;
  bool? descriptionSale;
  String? displayName;
  String? expensePolicy;
  bool? hideExpensePolicy;
  num? id;
  String? image;
  String? imageMedium;
  String? imageSmall;
  bool? imageVariant;
  num? incomingQty;
  String? invoicePolicy;
  bool? isProductVariant;
  List<dynamic>? itemIds;
  num? listPrice;
  bool? locationId;
  num? lstPrice;
  num? messageAttachmentCount;
  List<dynamic>? messageChannelIds;
  List<num>? messageFollowerIds;
  bool? messageHasError;
  num? messageHasErrorCounter;
  List<num>? messageIds;
  bool? messageIsFollower;
  bool? messageMainAttachmentId;
  bool? messageNeedaction;
  num? messageNeedactionCounter;
  List<num>? messagePartnerIds;
  bool? messageUnread;
  num? messageUnreadCounter;
  String? name;
  num? nbrReorderingRules;
  List<dynamic>? optionalProductIds;
  List<dynamic>? orderpointIds;
  num? outgoingQty;
  List<dynamic>? packagingIds;
  String? partnerRef;
  bool? posCategId;
  num? price;
  num? priceExtra;
  bool? pricelistId;
  List<dynamic>? pricelistItemIds;
  List<dynamic>? productTemplateAttributeValueIds;
  List<num>? productTmplId;
  num? productVariantCount;
  List<num>? productVariantId;
  List<num>? productVariantIds;
  bool? propertyAccountCreditorPriceDifference;
  bool? propertyAccountExpenseId;
  bool? propertyAccountIncomeId;
  bool? propertyCostMethod;
  bool? propertyStockAccountInput;
  bool? propertyStockAccountOutput;
  List<num>? propertyStockInventory;
  List<num>? propertyStockProduction;
  bool? propertyValuation;
  String? purchaseLineWarn;
  bool? purchaseLineWarnMsg;
  String? purchaseMethod;
  bool? purchaseOk;
  num? purchasedProductQty;
  num? qtyAtDate;
  num? qtyAvailable;
  bool? rental;
  num? reorderingMaxQty;
  num? reorderingMinQty;
  List<num>? responsibleId;
  List<dynamic>? routeFromCategIds;
  List<dynamic>? routeIds;
  num? saleDelay;
  String? saleLineWarn;
  bool? saleLineWarnMsg;
  bool? saleOk;
  num? salesCount;
  List<dynamic>? sellerIds;
  num? sequence;
  bool? serviceToPurchase;
  String? serviceType;
  num? standardPrice;
  List<dynamic>? stockFifoManualMoveIds;
  List<dynamic>? stockFifoRealTimeAmlIds;
  List<dynamic>? stockMoveIds;
  List<dynamic>? stockQuantIds;
  num? stockValue;
  List<num>? stockValueCurrencyId;
  List<dynamic>? supplierTaxesId;
  List<dynamic>? taxesId;
  bool? toWeight;
  String? tracking;
  String? type;
  List<num>? uomId;
  String? uomName;
  List<num>? uomPoId;
  List<dynamic>? validArchivedVariantIds;
  List<num>? validExistingVariantIds;
  List<dynamic>? validProductAttributeIds;
  List<dynamic>? validProductAttributeValueIds;
  List<dynamic>? validProductAttributeValueWnvaIds;
  List<dynamic>? validProductAttributeWnvaIds;
  List<dynamic>? validProductTemplateAttributeLineIds;
  List<dynamic>? validProductTemplateAttributeLineWnvaIds;
  String? valuation;
  List<dynamic>? variantSellerIds;
  num? virtualAvailable;
  num? volume;
  bool? warehouseId;
  List<dynamic>? websiteMessageIds;
  num? weight;
  List<num>? weightUomId;
  String? weightUomName;
  String? writeDate;
  List<num>? writeUid;
Result copyWith({  String? lastUpdate,
  bool? active,
  bool? activityDateDeadline,
  List<dynamic>? activityIds,
  bool? activityState,
  bool? activitySummary,
  bool? activityTypeId,
  bool? activityUserId,
  List<dynamic>? attributeLineIds,
  List<dynamic>? attributeValueIds,
  bool? availableInPos,
  bool? barcode,
  List<num>? categId,
  String? code,
  num? color,
  List<num>? companyId,
  List<num>? costCurrencyId,
  String? costMethod,
  String? createDate,
  List<num>? createUid,
  List<num>? currencyId,
  String? defaultCode,
  bool? description,
  bool? descriptionPicking,
  bool? descriptionPickingin,
  bool? descriptionPickingout,
  bool? descriptionPurchase,
  bool? descriptionSale,
  String? displayName,
  String? expensePolicy,
  bool? hideExpensePolicy,
  num? id,
  String? image,
  String? imageMedium,
  String? imageSmall,
  bool? imageVariant,
  num? incomingQty,
  String? invoicePolicy,
  bool? isProductVariant,
  List<dynamic>? itemIds,
  num? listPrice,
  bool? locationId,
  num? lstPrice,
  num? messageAttachmentCount,
  List<dynamic>? messageChannelIds,
  List<num>? messageFollowerIds,
  bool? messageHasError,
  num? messageHasErrorCounter,
  List<num>? messageIds,
  bool? messageIsFollower,
  bool? messageMainAttachmentId,
  bool? messageNeedaction,
  num? messageNeedactionCounter,
  List<num>? messagePartnerIds,
  bool? messageUnread,
  num? messageUnreadCounter,
  String? name,
  num? nbrReorderingRules,
  List<dynamic>? optionalProductIds,
  List<dynamic>? orderpointIds,
  num? outgoingQty,
  List<dynamic>? packagingIds,
  String? partnerRef,
  bool? posCategId,
  num? price,
  num? priceExtra,
  bool? pricelistId,
  List<dynamic>? pricelistItemIds,
  List<dynamic>? productTemplateAttributeValueIds,
  List<num>? productTmplId,
  num? productVariantCount,
  List<num>? productVariantId,
  List<num>? productVariantIds,
  bool? propertyAccountCreditorPriceDifference,
  bool? propertyAccountExpenseId,
  bool? propertyAccountIncomeId,
  bool? propertyCostMethod,
  bool? propertyStockAccountInput,
  bool? propertyStockAccountOutput,
  List<num>? propertyStockInventory,
  List<num>? propertyStockProduction,
  bool? propertyValuation,
  String? purchaseLineWarn,
  bool? purchaseLineWarnMsg,
  String? purchaseMethod,
  bool? purchaseOk,
  num? purchasedProductQty,
  num? qtyAtDate,
  num? qtyAvailable,
  bool? rental,
  num? reorderingMaxQty,
  num? reorderingMinQty,
  List<num>? responsibleId,
  List<dynamic>? routeFromCategIds,
  List<dynamic>? routeIds,
  num? saleDelay,
  String? saleLineWarn,
  bool? saleLineWarnMsg,
  bool? saleOk,
  num? salesCount,
  List<dynamic>? sellerIds,
  num? sequence,
  bool? serviceToPurchase,
  String? serviceType,
  num? standardPrice,
  List<dynamic>? stockFifoManualMoveIds,
  List<dynamic>? stockFifoRealTimeAmlIds,
  List<dynamic>? stockMoveIds,
  List<dynamic>? stockQuantIds,
  num? stockValue,
  List<num>? stockValueCurrencyId,
  List<dynamic>? supplierTaxesId,
  List<dynamic>? taxesId,
  bool? toWeight,
  String? tracking,
  String? type,
  List<num>? uomId,
  String? uomName,
  List<num>? uomPoId,
  List<dynamic>? validArchivedVariantIds,
  List<num>? validExistingVariantIds,
  List<dynamic>? validProductAttributeIds,
  List<dynamic>? validProductAttributeValueIds,
  List<dynamic>? validProductAttributeValueWnvaIds,
  List<dynamic>? validProductAttributeWnvaIds,
  List<dynamic>? validProductTemplateAttributeLineIds,
  List<dynamic>? validProductTemplateAttributeLineWnvaIds,
  String? valuation,
  List<dynamic>? variantSellerIds,
  num? virtualAvailable,
  num? volume,
  bool? warehouseId,
  List<dynamic>? websiteMessageIds,
  num? weight,
  List<num>? weightUomId,
  String? weightUomName,
  String? writeDate,
  List<num>? writeUid,
}) => Result(  lastUpdate: lastUpdate ?? this.lastUpdate,
  active: active ?? this.active,
  activityDateDeadline: activityDateDeadline ?? this.activityDateDeadline,
  activityIds: activityIds ?? this.activityIds,
  activityState: activityState ?? this.activityState,
  activitySummary: activitySummary ?? this.activitySummary,
  activityTypeId: activityTypeId ?? this.activityTypeId,
  activityUserId: activityUserId ?? this.activityUserId,
  attributeLineIds: attributeLineIds ?? this.attributeLineIds,
  attributeValueIds: attributeValueIds ?? this.attributeValueIds,
  availableInPos: availableInPos ?? this.availableInPos,
  barcode: barcode ?? this.barcode,
  categId: categId ?? this.categId,
  code: code ?? this.code,
  color: color ?? this.color,
  companyId: companyId ?? this.companyId,
  costCurrencyId: costCurrencyId ?? this.costCurrencyId,
  costMethod: costMethod ?? this.costMethod,
  createDate: createDate ?? this.createDate,
  createUid: createUid ?? this.createUid,
  currencyId: currencyId ?? this.currencyId,
  defaultCode: defaultCode ?? this.defaultCode,
  description: description ?? this.description,
  descriptionPicking: descriptionPicking ?? this.descriptionPicking,
  descriptionPickingin: descriptionPickingin ?? this.descriptionPickingin,
  descriptionPickingout: descriptionPickingout ?? this.descriptionPickingout,
  descriptionPurchase: descriptionPurchase ?? this.descriptionPurchase,
  descriptionSale: descriptionSale ?? this.descriptionSale,
  displayName: displayName ?? this.displayName,
  expensePolicy: expensePolicy ?? this.expensePolicy,
  hideExpensePolicy: hideExpensePolicy ?? this.hideExpensePolicy,
  id: id ?? this.id,
  image: image ?? this.image,
  imageMedium: imageMedium ?? this.imageMedium,
  imageSmall: imageSmall ?? this.imageSmall,
  imageVariant: imageVariant ?? this.imageVariant,
  incomingQty: incomingQty ?? this.incomingQty,
  invoicePolicy: invoicePolicy ?? this.invoicePolicy,
  isProductVariant: isProductVariant ?? this.isProductVariant,
  itemIds: itemIds ?? this.itemIds,
  listPrice: listPrice ?? this.listPrice,
  locationId: locationId ?? this.locationId,
  lstPrice: lstPrice ?? this.lstPrice,
  messageAttachmentCount: messageAttachmentCount ?? this.messageAttachmentCount,
  messageChannelIds: messageChannelIds ?? this.messageChannelIds,
  messageFollowerIds: messageFollowerIds ?? this.messageFollowerIds,
  messageHasError: messageHasError ?? this.messageHasError,
  messageHasErrorCounter: messageHasErrorCounter ?? this.messageHasErrorCounter,
  messageIds: messageIds ?? this.messageIds,
  messageIsFollower: messageIsFollower ?? this.messageIsFollower,
  messageMainAttachmentId: messageMainAttachmentId ?? this.messageMainAttachmentId,
  messageNeedaction: messageNeedaction ?? this.messageNeedaction,
  messageNeedactionCounter: messageNeedactionCounter ?? this.messageNeedactionCounter,
  messagePartnerIds: messagePartnerIds ?? this.messagePartnerIds,
  messageUnread: messageUnread ?? this.messageUnread,
  messageUnreadCounter: messageUnreadCounter ?? this.messageUnreadCounter,
  name: name ?? this.name,
  nbrReorderingRules: nbrReorderingRules ?? this.nbrReorderingRules,
  optionalProductIds: optionalProductIds ?? this.optionalProductIds,
  orderpointIds: orderpointIds ?? this.orderpointIds,
  outgoingQty: outgoingQty ?? this.outgoingQty,
  packagingIds: packagingIds ?? this.packagingIds,
  partnerRef: partnerRef ?? this.partnerRef,
  posCategId: posCategId ?? this.posCategId,
  price: price ?? this.price,
  priceExtra: priceExtra ?? this.priceExtra,
  pricelistId: pricelistId ?? this.pricelistId,
  pricelistItemIds: pricelistItemIds ?? this.pricelistItemIds,
  productTemplateAttributeValueIds: productTemplateAttributeValueIds ?? this.productTemplateAttributeValueIds,
  productTmplId: productTmplId ?? this.productTmplId,
  productVariantCount: productVariantCount ?? this.productVariantCount,
  productVariantId: productVariantId ?? this.productVariantId,
  productVariantIds: productVariantIds ?? this.productVariantIds,
  propertyAccountCreditorPriceDifference: propertyAccountCreditorPriceDifference ?? this.propertyAccountCreditorPriceDifference,
  propertyAccountExpenseId: propertyAccountExpenseId ?? this.propertyAccountExpenseId,
  propertyAccountIncomeId: propertyAccountIncomeId ?? this.propertyAccountIncomeId,
  propertyCostMethod: propertyCostMethod ?? this.propertyCostMethod,
  propertyStockAccountInput: propertyStockAccountInput ?? this.propertyStockAccountInput,
  propertyStockAccountOutput: propertyStockAccountOutput ?? this.propertyStockAccountOutput,
  propertyStockInventory: propertyStockInventory ?? this.propertyStockInventory,
  propertyStockProduction: propertyStockProduction ?? this.propertyStockProduction,
  propertyValuation: propertyValuation ?? this.propertyValuation,
  purchaseLineWarn: purchaseLineWarn ?? this.purchaseLineWarn,
  purchaseLineWarnMsg: purchaseLineWarnMsg ?? this.purchaseLineWarnMsg,
  purchaseMethod: purchaseMethod ?? this.purchaseMethod,
  purchaseOk: purchaseOk ?? this.purchaseOk,
  purchasedProductQty: purchasedProductQty ?? this.purchasedProductQty,
  qtyAtDate: qtyAtDate ?? this.qtyAtDate,
  qtyAvailable: qtyAvailable ?? this.qtyAvailable,
  rental: rental ?? this.rental,
  reorderingMaxQty: reorderingMaxQty ?? this.reorderingMaxQty,
  reorderingMinQty: reorderingMinQty ?? this.reorderingMinQty,
  responsibleId: responsibleId ?? this.responsibleId,
  routeFromCategIds: routeFromCategIds ?? this.routeFromCategIds,
  routeIds: routeIds ?? this.routeIds,
  saleDelay: saleDelay ?? this.saleDelay,
  saleLineWarn: saleLineWarn ?? this.saleLineWarn,
  saleLineWarnMsg: saleLineWarnMsg ?? this.saleLineWarnMsg,
  saleOk: saleOk ?? this.saleOk,
  salesCount: salesCount ?? this.salesCount,
  sellerIds: sellerIds ?? this.sellerIds,
  sequence: sequence ?? this.sequence,
  serviceToPurchase: serviceToPurchase ?? this.serviceToPurchase,
  serviceType: serviceType ?? this.serviceType,
  standardPrice: standardPrice ?? this.standardPrice,
  stockFifoManualMoveIds: stockFifoManualMoveIds ?? this.stockFifoManualMoveIds,
  stockFifoRealTimeAmlIds: stockFifoRealTimeAmlIds ?? this.stockFifoRealTimeAmlIds,
  stockMoveIds: stockMoveIds ?? this.stockMoveIds,
  stockQuantIds: stockQuantIds ?? this.stockQuantIds,
  stockValue: stockValue ?? this.stockValue,
  stockValueCurrencyId: stockValueCurrencyId ?? this.stockValueCurrencyId,
  supplierTaxesId: supplierTaxesId ?? this.supplierTaxesId,
  taxesId: taxesId ?? this.taxesId,
  toWeight: toWeight ?? this.toWeight,
  tracking: tracking ?? this.tracking,
  type: type ?? this.type,
  uomId: uomId ?? this.uomId,
  uomName: uomName ?? this.uomName,
  uomPoId: uomPoId ?? this.uomPoId,
  validArchivedVariantIds: validArchivedVariantIds ?? this.validArchivedVariantIds,
  validExistingVariantIds: validExistingVariantIds ?? this.validExistingVariantIds,
  validProductAttributeIds: validProductAttributeIds ?? this.validProductAttributeIds,
  validProductAttributeValueIds: validProductAttributeValueIds ?? this.validProductAttributeValueIds,
  validProductAttributeValueWnvaIds: validProductAttributeValueWnvaIds ?? this.validProductAttributeValueWnvaIds,
  validProductAttributeWnvaIds: validProductAttributeWnvaIds ?? this.validProductAttributeWnvaIds,
  validProductTemplateAttributeLineIds: validProductTemplateAttributeLineIds ?? this.validProductTemplateAttributeLineIds,
  validProductTemplateAttributeLineWnvaIds: validProductTemplateAttributeLineWnvaIds ?? this.validProductTemplateAttributeLineWnvaIds,
  valuation: valuation ?? this.valuation,
  variantSellerIds: variantSellerIds ?? this.variantSellerIds,
  virtualAvailable: virtualAvailable ?? this.virtualAvailable,
  volume: volume ?? this.volume,
  warehouseId: warehouseId ?? this.warehouseId,
  websiteMessageIds: websiteMessageIds ?? this.websiteMessageIds,
  weight: weight ?? this.weight,
  weightUomId: weightUomId ?? this.weightUomId,
  weightUomName: weightUomName ?? this.weightUomName,
  writeDate: writeDate ?? this.writeDate,
  writeUid: writeUid ?? this.writeUid,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['__last_update'] = lastUpdate;
    map['active'] = active;
    map['activity_date_deadline'] = activityDateDeadline;
    if (activityIds != null) {
      map['activity_ids'] = activityIds?.map((v) => v.toJson()).toList();
    }
    map['activity_state'] = activityState;
    map['activity_summary'] = activitySummary;
    map['activity_type_id'] = activityTypeId;
    map['activity_user_id'] = activityUserId;
    if (attributeLineIds != null) {
      map['attribute_line_ids'] = attributeLineIds?.map((v) => v.toJson()).toList();
    }
    if (attributeValueIds != null) {
      map['attribute_value_ids'] = attributeValueIds?.map((v) => v.toJson()).toList();
    }
    map['available_in_pos'] = availableInPos;
    map['barcode'] = barcode;
    map['categ_id'] = categId;
    map['code'] = code;
    map['color'] = color;
    map['company_id'] = companyId;
    map['cost_currency_id'] = costCurrencyId;
    map['cost_method'] = costMethod;
    map['create_date'] = createDate;
    map['create_uid'] = createUid;
    map['currency_id'] = currencyId;
    map['default_code'] = defaultCode;
    map['description'] = description;
    map['description_picking'] = descriptionPicking;
    map['description_pickingin'] = descriptionPickingin;
    map['description_pickingout'] = descriptionPickingout;
    map['description_purchase'] = descriptionPurchase;
    map['description_sale'] = descriptionSale;
    map['display_name'] = displayName;
    map['expense_policy'] = expensePolicy;
    map['hide_expense_policy'] = hideExpensePolicy;
    map['id'] = id;
    map['image'] = image;
    map['image_medium'] = imageMedium;
    map['image_small'] = imageSmall;
    map['image_variant'] = imageVariant;
    map['incoming_qty'] = incomingQty;
    map['invoice_policy'] = invoicePolicy;
    map['is_product_variant'] = isProductVariant;
    if (itemIds != null) {
      map['item_ids'] = itemIds?.map((v) => v.toJson()).toList();
    }
    map['list_price'] = listPrice;
    map['location_id'] = locationId;
    map['lst_price'] = lstPrice;
    map['message_attachment_count'] = messageAttachmentCount;
    if (messageChannelIds != null) {
      map['message_channel_ids'] = messageChannelIds?.map((v) => v.toJson()).toList();
    }
    map['message_follower_ids'] = messageFollowerIds;
    map['message_has_error'] = messageHasError;
    map['message_has_error_counter'] = messageHasErrorCounter;
    map['message_ids'] = messageIds;
    map['message_is_follower'] = messageIsFollower;
    map['message_main_attachment_id'] = messageMainAttachmentId;
    map['message_needaction'] = messageNeedaction;
    map['message_needaction_counter'] = messageNeedactionCounter;
    map['message_partner_ids'] = messagePartnerIds;
    map['message_unread'] = messageUnread;
    map['message_unread_counter'] = messageUnreadCounter;
    map['name'] = name;
    map['nbr_reordering_rules'] = nbrReorderingRules;
    if (optionalProductIds != null) {
      map['optional_product_ids'] = optionalProductIds?.map((v) => v.toJson()).toList();
    }
    if (orderpointIds != null) {
      map['orderpoint_ids'] = orderpointIds?.map((v) => v.toJson()).toList();
    }
    map['outgoing_qty'] = outgoingQty;
    if (packagingIds != null) {
      map['packaging_ids'] = packagingIds?.map((v) => v.toJson()).toList();
    }
    map['partner_ref'] = partnerRef;
    map['pos_categ_id'] = posCategId;
    map['price'] = price;
    map['price_extra'] = priceExtra;
    map['pricelist_id'] = pricelistId;
    if (pricelistItemIds != null) {
      map['pricelist_item_ids'] = pricelistItemIds?.map((v) => v.toJson()).toList();
    }
    if (productTemplateAttributeValueIds != null) {
      map['product_template_attribute_value_ids'] = productTemplateAttributeValueIds?.map((v) => v.toJson()).toList();
    }
    map['product_tmpl_id'] = productTmplId;
    map['product_variant_count'] = productVariantCount;
    map['product_variant_id'] = productVariantId;
    map['product_variant_ids'] = productVariantIds;
    map['property_account_creditor_price_difference'] = propertyAccountCreditorPriceDifference;
    map['property_account_expense_id'] = propertyAccountExpenseId;
    map['property_account_income_id'] = propertyAccountIncomeId;
    map['property_cost_method'] = propertyCostMethod;
    map['property_stock_account_input'] = propertyStockAccountInput;
    map['property_stock_account_output'] = propertyStockAccountOutput;
    map['property_stock_inventory'] = propertyStockInventory;
    map['property_stock_production'] = propertyStockProduction;
    map['property_valuation'] = propertyValuation;
    map['purchase_line_warn'] = purchaseLineWarn;
    map['purchase_line_warn_msg'] = purchaseLineWarnMsg;
    map['purchase_method'] = purchaseMethod;
    map['purchase_ok'] = purchaseOk;
    map['purchased_product_qty'] = purchasedProductQty;
    map['qty_at_date'] = qtyAtDate;
    map['qty_available'] = qtyAvailable;
    map['rental'] = rental;
    map['reordering_max_qty'] = reorderingMaxQty;
    map['reordering_min_qty'] = reorderingMinQty;
    map['responsible_id'] = responsibleId;
    if (routeFromCategIds != null) {
      map['route_from_categ_ids'] = routeFromCategIds?.map((v) => v.toJson()).toList();
    }
    if (routeIds != null) {
      map['route_ids'] = routeIds?.map((v) => v.toJson()).toList();
    }
    map['sale_delay'] = saleDelay;
    map['sale_line_warn'] = saleLineWarn;
    map['sale_line_warn_msg'] = saleLineWarnMsg;
    map['sale_ok'] = saleOk;
    map['sales_count'] = salesCount;
    if (sellerIds != null) {
      map['seller_ids'] = sellerIds?.map((v) => v.toJson()).toList();
    }
    map['sequence'] = sequence;
    map['service_to_purchase'] = serviceToPurchase;
    map['service_type'] = serviceType;
    map['standard_price'] = standardPrice;
    if (stockFifoManualMoveIds != null) {
      map['stock_fifo_manual_move_ids'] = stockFifoManualMoveIds?.map((v) => v.toJson()).toList();
    }
    if (stockFifoRealTimeAmlIds != null) {
      map['stock_fifo_real_time_aml_ids'] = stockFifoRealTimeAmlIds?.map((v) => v.toJson()).toList();
    }
    if (stockMoveIds != null) {
      map['stock_move_ids'] = stockMoveIds?.map((v) => v.toJson()).toList();
    }
    if (stockQuantIds != null) {
      map['stock_quant_ids'] = stockQuantIds?.map((v) => v.toJson()).toList();
    }
    map['stock_value'] = stockValue;
    map['stock_value_currency_id'] = stockValueCurrencyId;
    if (supplierTaxesId != null) {
      map['supplier_taxes_id'] = supplierTaxesId?.map((v) => v.toJson()).toList();
    }
    if (taxesId != null) {
      map['taxes_id'] = taxesId?.map((v) => v.toJson()).toList();
    }
    map['to_weight'] = toWeight;
    map['tracking'] = tracking;
    map['type'] = type;
    map['uom_id'] = uomId;
    map['uom_name'] = uomName;
    map['uom_po_id'] = uomPoId;
    if (validArchivedVariantIds != null) {
      map['valid_archived_variant_ids'] = validArchivedVariantIds?.map((v) => v.toJson()).toList();
    }
    map['valid_existing_variant_ids'] = validExistingVariantIds;
    if (validProductAttributeIds != null) {
      map['valid_product_attribute_ids'] = validProductAttributeIds?.map((v) => v.toJson()).toList();
    }
    if (validProductAttributeValueIds != null) {
      map['valid_product_attribute_value_ids'] = validProductAttributeValueIds?.map((v) => v.toJson()).toList();
    }
    if (validProductAttributeValueWnvaIds != null) {
      map['valid_product_attribute_value_wnva_ids'] = validProductAttributeValueWnvaIds?.map((v) => v.toJson()).toList();
    }
    if (validProductAttributeWnvaIds != null) {
      map['valid_product_attribute_wnva_ids'] = validProductAttributeWnvaIds?.map((v) => v.toJson()).toList();
    }
    if (validProductTemplateAttributeLineIds != null) {
      map['valid_product_template_attribute_line_ids'] = validProductTemplateAttributeLineIds?.map((v) => v.toJson()).toList();
    }
    if (validProductTemplateAttributeLineWnvaIds != null) {
      map['valid_product_template_attribute_line_wnva_ids'] = validProductTemplateAttributeLineWnvaIds?.map((v) => v.toJson()).toList();
    }
    map['valuation'] = valuation;
    if (variantSellerIds != null) {
      map['variant_seller_ids'] = variantSellerIds?.map((v) => v.toJson()).toList();
    }
    map['virtual_available'] = virtualAvailable;
    map['volume'] = volume;
    map['warehouse_id'] = warehouseId;
    if (websiteMessageIds != null) {
      map['website_message_ids'] = websiteMessageIds?.map((v) => v.toJson()).toList();
    }
    map['weight'] = weight;
    map['weight_uom_id'] = weightUomId;
    map['weight_uom_name'] = weightUomName;
    map['write_date'] = writeDate;
    map['write_uid'] = writeUid;
    return map;
  }

}