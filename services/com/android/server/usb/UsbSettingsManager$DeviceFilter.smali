.class Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceFilter"
.end annotation


# instance fields
.field public final mClass:I

.field public final mManufacturerName:Ljava/lang/String;

.field public final mProductId:I

.field public final mProductName:Ljava/lang/String;

.field public final mProtocol:I

.field public final mSerialNumber:Ljava/lang/String;

.field public final mSubclass:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "vid"    # I
    .param p2, "pid"    # I
    .param p3, "clasz"    # I
    .param p4, "subclass"    # I
    .param p5, "protocol"    # I
    .param p6, "manufacturer"    # Ljava/lang/String;
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "serialnum"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    .line 122
    iput p2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    .line 123
    iput p3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    .line 124
    iput p4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    .line 125
    iput p5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    .line 126
    iput-object p6, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 127
    iput-object p7, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    .line 128
    iput-object p8, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    .line 133
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    .line 134
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    .line 135
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    .line 136
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    .line 137
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private matches(III)Z
    .registers 8
    .param p1, "clasz"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 227
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v2, v3, :cond_b

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne p1, v2, :cond_1e

    .line 228
    :cond_b
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v2, v3, :cond_13

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne p2, v2, :cond_1e

    .line 229
    :cond_13
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v2, v3, :cond_1b

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-ne p3, v2, :cond_1c

    .line 227
    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    .line 229
    goto :goto_1b

    :cond_1e
    move v0, v1

    .line 227
    goto :goto_1b
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .registers 20
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v2, -0x1

    .line 145
    .local v2, "vendorId":I
    const/4 v3, -0x1

    .line 146
    .local v3, "productId":I
    const/4 v4, -0x1

    .line 147
    .local v4, "deviceClass":I
    const/4 v5, -0x1

    .line 148
    .local v5, "deviceSubclass":I
    const/4 v6, -0x1

    .line 149
    .local v6, "deviceProtocol":I
    const/4 v7, 0x0

    .line 150
    .local v7, "manufacturerName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 151
    .local v8, "productName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 153
    .local v9, "serialNumber":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    .line 154
    .local v10, "count":I
    const/4 v12, 0x0

    .end local v7    # "manufacturerName":Ljava/lang/String;
    .end local v8    # "productName":Ljava/lang/String;
    .end local v9    # "serialNumber":Ljava/lang/String;
    .local v12, "i":I
    :goto_d
    if-ge v12, v10, :cond_e2

    .line 155
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 156
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 158
    .local v16, "value":Ljava/lang/String;
    const-string/jumbo v1, "manufacturer-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 159
    move-object/from16 v7, v16

    .line 154
    :cond_26
    :goto_26
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 160
    :cond_29
    const-string/jumbo v1, "product-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 161
    move-object/from16 v8, v16

    .local v8, "productName":Ljava/lang/String;
    goto :goto_26

    .line 162
    .end local v8    # "productName":Ljava/lang/String;
    :cond_35
    const-string/jumbo v1, "serial-number"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 163
    move-object/from16 v9, v16

    .local v9, "serialNumber":Ljava/lang/String;
    goto :goto_26

    .line 165
    .end local v9    # "serialNumber":Ljava/lang/String;
    :cond_41
    const/4 v13, -0x1

    .line 166
    .local v13, "intValue":I
    const/16 v15, 0xa

    .line 167
    .local v15, "radix":I
    if-eqz v16, :cond_80

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v1, v0, :cond_80

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ne v1, v0, :cond_80

    .line 168
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x78

    move/from16 v0, v17

    if-eq v1, v0, :cond_77

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x58

    move/from16 v0, v17

    if-ne v1, v0, :cond_80

    .line 170
    :cond_77
    const/16 v15, 0x10

    .line 171
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 174
    :cond_80
    :try_start_80
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_85} :catch_91

    move-result v13

    .line 179
    const-string/jumbo v1, "vendor-id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 180
    move v2, v13

    goto :goto_26

    .line 175
    :catch_91
    move-exception v11

    .line 176
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "UsbSettingsManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "invalid number for field "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 181
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_b2
    const-string/jumbo v1, "product-id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 182
    move v3, v13

    goto/16 :goto_26

    .line 183
    :cond_be
    const-string/jumbo v1, "class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 184
    move v4, v13

    goto/16 :goto_26

    .line 185
    :cond_ca
    const-string/jumbo v1, "subclass"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 186
    move v5, v13

    goto/16 :goto_26

    .line 187
    :cond_d6
    const-string/jumbo v1, "protocol"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 188
    move v6, v13

    goto/16 :goto_26

    .line 192
    .end local v13    # "intValue":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "radix":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_e2
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 280
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v2, v3, :cond_b

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v2, v3, :cond_c

    .line 282
    :cond_b
    return v4

    .line 281
    :cond_c
    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v2, v3, :cond_b

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v2, v3, :cond_b

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v2, v3, :cond_b

    .line 284
    instance-of v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    if-eqz v2, :cond_a7

    move-object v1, p1

    .line 285
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 287
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v2, v3, :cond_2b

    .line 288
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v2, v3, :cond_2c

    .line 292
    :cond_2b
    return v4

    .line 289
    :cond_2c
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne v2, v3, :cond_2b

    .line 290
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v2, v3, :cond_2b

    .line 291
    iget v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-ne v2, v3, :cond_2b

    .line 294
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_47

    .line 295
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_47

    .line 306
    :cond_46
    return v4

    .line 296
    :cond_47
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_4f

    .line 297
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_46

    .line 298
    :cond_4f
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_57

    .line 299
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_46

    .line 300
    :cond_57
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_5f

    .line 301
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_46

    .line 302
    :cond_5f
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_67

    .line 303
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_46

    .line 304
    :cond_67
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v2, :cond_6f

    .line 305
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v2, :cond_46

    .line 308
    :cond_6f
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_81

    .line 309
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_81

    .line 310
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 311
    :cond_81
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_93

    .line 312
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_93

    .line 313
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 314
    :cond_93
    iget-object v2, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_a5

    .line 315
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_a5

    .line 316
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 319
    :cond_a5
    return v5

    .line 317
    :cond_a6
    return v4

    .line 321
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_a7
    instance-of v2, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_14c

    move-object v0, p1

    .line 322
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 323
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v2, v3, :cond_be

    .line 324
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v2, v3, :cond_bf

    .line 328
    :cond_be
    return v4

    .line 325
    :cond_bf
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne v2, v3, :cond_be

    .line 326
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v2, v3, :cond_be

    .line 327
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-ne v2, v3, :cond_be

    .line 330
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v2, :cond_e2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e2

    .line 336
    :cond_e1
    return v4

    .line 331
    :cond_e2
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v2, :cond_ec

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e1

    .line 332
    :cond_ec
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_f6

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e1

    .line 333
    :cond_f6
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v2, :cond_100

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e1

    .line 334
    :cond_100
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v2, :cond_10a

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e1

    .line 335
    :cond_10a
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v2, :cond_114

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e1

    .line 338
    :cond_114
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_126

    .line 339
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 340
    :cond_126
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_138

    .line 341
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 342
    :cond_138
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14a

    .line 343
    iget-object v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 346
    :cond_14a
    return v5

    .line 344
    :cond_14b
    return v4

    .line 348
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_14c
    return v4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 353
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    .line 354
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    .line 353
    xor-int/2addr v0, v1

    return v0
.end method

.method public matches(Landroid/hardware/usb/UsbDevice;)Z
    .registers 10
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 233
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v3, v5, :cond_10

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v3, v4, :cond_10

    return v6

    .line 234
    :cond_10
    iget v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v3, v5, :cond_1d

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v3, v4, :cond_1d

    return v6

    .line 235
    :cond_1d
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_28

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    return v6

    .line 236
    :cond_28
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_33

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_33

    return v6

    .line 237
    :cond_33
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_3e

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3e

    return v6

    .line 238
    :cond_3e
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v3, :cond_54

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 239
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 240
    :cond_54
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v3, :cond_6a

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6a

    .line 241
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 242
    :cond_6a
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v3, :cond_80

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_80

    .line 243
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 246
    :cond_80
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v4

    .line 247
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v5

    .line 246
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 247
    return v7

    .line 239
    :cond_93
    return v6

    .line 241
    :cond_94
    return v6

    .line 243
    :cond_95
    return v6

    .line 250
    :cond_96
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 251
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9b
    if-ge v1, v0, :cond_b7

    .line 252
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 253
    .local v2, "intf":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    .line 254
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v5

    .line 253
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 254
    return v7

    .line 251
    :cond_b4
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    .line 257
    .end local v2    # "intf":Landroid/hardware/usb/UsbInterface;
    :cond_b7
    return v6
.end method

.method public matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .registers 6
    .param p1, "f"    # Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 261
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_d

    iget v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v1, :cond_d

    return v2

    .line 262
    :cond_d
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v3, :cond_18

    iget v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v1, :cond_18

    return v2

    .line 263
    :cond_18
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v0, :cond_21

    return v2

    .line 264
    :cond_21
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v0, :cond_2a

    return v2

    .line 265
    :cond_2a
    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v0, :cond_33

    return v2

    .line 266
    :cond_33
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 267
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 268
    :cond_45
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_57

    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 269
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 270
    :cond_57
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_69

    iget-object v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_69

    .line 271
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 274
    :cond_69
    iget v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    iget v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v0

    return v0

    .line 267
    :cond_74
    return v2

    .line 269
    :cond_75
    return v2

    .line 271
    :cond_76
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    const-string/jumbo v1, ",mClass="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    const-string/jumbo v1, ",mSubclass="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    const-string/jumbo v1, ",mProtocol="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    const-string/jumbo v1, ",mManufacturerName="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    const-string/jumbo v1, ",mProductName="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    const-string/jumbo v1, ",mSerialNumber="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 363
    const-string/jumbo v1, "]"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 198
    const-string/jumbo v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_18

    .line 200
    const-string/jumbo v0, "vendor-id"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_18
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v3, :cond_28

    .line 203
    const-string/jumbo v0, "product-id"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    :cond_28
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v0, v3, :cond_38

    .line 206
    const-string/jumbo v0, "class"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    :cond_38
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v0, v3, :cond_48

    .line 209
    const-string/jumbo v0, "subclass"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    :cond_48
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v0, v3, :cond_58

    .line 212
    const-string/jumbo v0, "protocol"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :cond_58
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 215
    const-string/jumbo v0, "manufacturer-name"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    :cond_64
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 218
    const-string/jumbo v0, "product-name"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    :cond_70
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_7c

    .line 221
    const-string/jumbo v0, "serial-number"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    :cond_7c
    const-string/jumbo v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    return-void
.end method
