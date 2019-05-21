.class public Lcom/adobe/xmp/impl/XMPMetaImpl;
.super Ljava/lang/Object;
.source "XMPMetaImpl.java"

# interfaces
.implements Lcom/adobe/xmp/XMPMeta;


# instance fields
.field private tree:Lcom/adobe/xmp/impl/XMPNode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v0, v1, v1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 68
    return-void
.end method

.method private constructor <init>(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    .line 81
    return-void
.end method

.method private static evaluateNodeValue(ILcom/adobe/xmp/impl/XMPNode;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1388
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1389
    packed-switch p0, :pswitch_data_0

    .line 1419
    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1422
    :goto_0
    return-object v0

    .line 1392
    :pswitch_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertToBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0

    .line 1395
    :pswitch_1
    new-instance v0, Ljava/lang/Integer;

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertToInteger(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 1398
    :pswitch_2
    new-instance v0, Ljava/lang/Long;

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertToLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    .line 1401
    :pswitch_3
    new-instance v0, Ljava/lang/Double;

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertToDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 1404
    :pswitch_4
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    goto :goto_0

    .line 1407
    :pswitch_5
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertToDate(Ljava/lang/String;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v0

    .line 1408
    invoke-interface {v0}, Lcom/adobe/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 1411
    :pswitch_6
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 1419
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 1389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 733
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 735
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 736
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 738
    if-eqz v1, :cond_1

    .line 740
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Property must be simple when a value type is requested"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 746
    :cond_0
    invoke-static {p3, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->evaluateNodeValue(ILcom/adobe/xmp/impl/XMPNode;)Ljava/lang/Object;

    move-result-object v0

    .line 750
    :cond_1
    return-object v0
.end method

.method private static setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1354
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1356
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 6395
    if-nez p1, :cond_2

    move-object v1, v0

    .line 6433
    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->removeControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6327
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "xml:lang"

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 6329
    :cond_1
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 1371
    :goto_1
    return-void

    .line 6399
    :cond_2
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 6401
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6403
    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 6405
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertFromInteger(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6407
    :cond_4
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 6409
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertFromLong(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6411
    :cond_5
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_6

    .line 6413
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertFromDouble(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6415
    :cond_6
    instance-of v1, p1, Lcom/adobe/xmp/XMPDateTime;

    if-eqz v1, :cond_7

    .line 6417
    check-cast p1, Lcom/adobe/xmp/XMPDateTime;

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6419
    :cond_7
    instance-of v1, p1, Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_8

    .line 6421
    check-cast p1, Ljava/util/GregorianCalendar;

    invoke-static {p1}, Lcom/adobe/xmp/XMPDateTimeFactory;->createFromCalendar(Ljava/util/Calendar;)Lcom/adobe/xmp/XMPDateTime;

    move-result-object v1

    .line 6422
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->convertFromDate(Lcom/adobe/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6424
    :cond_8
    instance-of v1, p1, [B

    if-eqz v1, :cond_9

    .line 6426
    check-cast p1, [B

    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6430
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 6333
    :cond_a
    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 1363
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 1365
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Composite nodes can\'t have values"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1368
    :cond_c
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->removeChildren()V

    goto/16 :goto_1
.end method


# virtual methods
.method public final appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x67

    const/16 v6, 0x66

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 92
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {p3}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, -0x1e01

    if-nez v0, :cond_0

    move v0, v1

    .line 98
    :goto_0
    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Only array form flags allowed for arrayOptions"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    move v0, v2

    .line 2361
    goto :goto_0

    .line 105
    :cond_1
    invoke-static {p3, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    .line 111
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v4

    .line 115
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v0, v4, v2, v5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v1

    if-nez v1, :cond_4

    .line 123
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "The named property is not an array"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 133
    :cond_2
    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v0, v4, v1, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 136
    if-nez v0, :cond_4

    .line 138
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Failure creating array node"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 144
    :cond_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Explicit arrayOptions required to create new array"

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 3305
    :cond_4
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string v3, "[]"

    invoke-direct {v1, v3, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 3306
    invoke-static {p5, p4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v3

    .line 3310
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 3316
    if-lez v4, :cond_5

    if-gt v4, v4, :cond_5

    .line 3322
    invoke-virtual {v0, v4, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 3323
    invoke-static {v1, p4, v3, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    return-void

    .line 3327
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Array index out of bounds"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1238
    new-instance v1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v1, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>(Lcom/adobe/xmp/impl/XMPNode;)V

    return-object v1
.end method

.method public final deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 219
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 221
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 226
    invoke-static {v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 287
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 288
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 290
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 292
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 296
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 640
    .line 5665
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 5666
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 5668
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 5669
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-static {v2, v1, v3, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 5671
    if-eqz v1, :cond_0

    .line 5679
    invoke-static {v3, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->evaluateNodeValue(ILcom/adobe/xmp/impl/XMPNode;)Ljava/lang/Object;

    move-result-object v2

    .line 5681
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl$2;

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl$2;-><init>(Ljava/lang/Object;Lcom/adobe/xmp/impl/XMPNode;)V

    :cond_0
    return-object v0
.end method

.method public final getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 937
    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getPropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 760
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPropertyCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 907
    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public final getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 848
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public final getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 790
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getPropertyObject(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRoot()Lcom/adobe/xmp/impl/XMPNode;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    return-object v0
.end method

.method public final iterator()Lcom/adobe/xmp/XMPIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1007
    .line 6026
    new-instance v0, Lcom/adobe/xmp/impl/XMPIteratorImpl;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/adobe/xmp/impl/XMPIteratorImpl;-><init>(Lcom/adobe/xmp/impl/XMPMetaImpl;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/IteratorOptions;)V

    .line 1007
    return-object v0
.end method

.method public final setLocalizedText$5166KOBMC4NMOOBECSNL6T3ID5N6EEQCD9GNCO9FDHGMSPPFADQ74QBECSTKOQJ1EPGIUR31DPJIUKRKE9KMSPPR9HL62TJ15TM62RJ75T9N8SJ9DPJJMJ3AC5R62BRCC5N6EBQJEHP6IRJ77D666RRD5TGM8RR2CKNNGRBG5TNN0T39DTN76BQGE9NN0PBIEHSKUS3KD5NMSSPR55B0____(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 447
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    .line 4095
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4097
    :cond_0
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Empty specific language"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 450
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 451
    invoke-static/range {p4 .. p4}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 453
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 456
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v3, 0x1

    new-instance v4, Lcom/adobe/xmp/options/PropertyOptions;

    const/16 v5, 0x1e00

    invoke-direct {v4, v5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    invoke-static {v2, v1, v3, v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    .line 460
    if-nez v9, :cond_2

    .line 462
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Failed to find or create array node"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 464
    :cond_2
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v1

    if-nez v1, :cond_3

    .line 466
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 468
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 478
    :cond_3
    const/4 v5, 0x0

    .line 479
    const/4 v2, 0x0

    .line 481
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 483
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 484
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "xml:lang"

    const/4 v6, 0x1

    .line 485
    invoke-virtual {v1, v6}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 487
    :cond_5
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Language qualifier must be first"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 472
    :cond_6
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Specified property is no alt-text array"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 489
    :cond_7
    const-string v4, "x-default"

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 492
    const/4 v5, 0x1

    move-object v6, v1

    .line 498
    :goto_0
    if-eqz v6, :cond_8

    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    .line 500
    invoke-virtual {v9, v6}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 501
    const/4 v1, 0x1

    invoke-virtual {v9, v1, v6}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 4819
    :cond_8
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v1

    if-nez v1, :cond_9

    .line 4821
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Localized text array is not alt-text"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 4823
    :cond_9
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_a

    .line 4825
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    move-object v2, v1

    .line 508
    :goto_1
    const/4 v1, 0x0

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 509
    const/4 v1, 0x1

    aget-object v1, v2, v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 511
    const-string v2, "x-default"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 513
    packed-switch v3, :pswitch_data_0

    .line 611
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Unexpected result from ChooseLocalizedText"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 4828
    :cond_a
    const/4 v3, 0x0

    .line 4829
    const/4 v1, 0x0

    .line 4830
    const/4 v2, 0x0

    .line 4833
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v10

    move v4, v3

    move-object v3, v1

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4835
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 4838
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 4840
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Alt-text array item is not simple"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 4842
    :cond_b
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "xml:lang"

    const/4 v12, 0x1

    .line 4843
    invoke-virtual {v1, v12}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 4845
    :cond_c
    new-instance v1, Lcom/adobe/xmp/XMPException;

    const-string v2, "Alt-text array item has no language qualifier"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 4849
    :cond_d
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 4852
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 4854
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    goto/16 :goto_1

    .line 4856
    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 4858
    if-nez v3, :cond_1f

    .line 4863
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    goto :goto_2

    .line 4865
    :cond_f
    const-string v12, "x-default"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    :goto_4
    move-object v2, v1

    .line 4869
    goto :goto_2

    .line 4872
    :cond_10
    const/4 v1, 0x1

    if-ne v4, v1, :cond_11

    .line 4874
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/Integer;

    const/4 v7, 0x2

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    move-object v2, v1

    goto/16 :goto_1

    .line 4876
    :cond_11
    const/4 v1, 0x1

    if-le v4, v1, :cond_12

    .line 4878
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/Integer;

    const/4 v7, 0x3

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    move-object v2, v1

    goto/16 :goto_1

    .line 4880
    :cond_12
    if-eqz v2, :cond_13

    .line 4882
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    const/4 v7, 0x4

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    move-object v2, v1

    goto/16 :goto_1

    .line 4887
    :cond_13
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    aput-object v3, v1, v2

    move-object v2, v1

    goto/16 :goto_1

    .line 519
    :pswitch_0
    const-string v1, "x-default"

    move-object/from16 v0, p5

    invoke-static {v9, v1, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v1, 0x1

    .line 521
    if-nez v2, :cond_14

    .line 523
    move-object/from16 v0, p5

    invoke-static {v9, v8, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_14
    :goto_5
    if-nez v1, :cond_15

    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 619
    const-string v1, "x-default"

    move-object/from16 v0, p5

    invoke-static {v9, v1, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_15
    return-void

    .line 529
    :pswitch_1
    if-nez v2, :cond_17

    .line 533
    if-eqz v5, :cond_16

    if-eq v6, v1, :cond_16

    if-eqz v6, :cond_16

    .line 534
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 536
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 539
    :cond_16
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    move v1, v5

    goto :goto_5

    .line 545
    :cond_17
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 547
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 548
    if-eq v1, v6, :cond_18

    .line 549
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_19

    .line 550
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 549
    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 554
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_6

    .line 550
    :cond_19
    const/4 v2, 0x0

    goto :goto_7

    .line 557
    :cond_1a
    if-eqz v6, :cond_1d

    .line 559
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    move v1, v5

    goto :goto_5

    .line 568
    :pswitch_2
    if-eqz v5, :cond_1b

    if-eq v6, v1, :cond_1b

    if-eqz v6, :cond_1b

    .line 569
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 571
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 573
    :cond_1b
    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    move v1, v5

    .line 576
    goto/16 :goto_5

    .line 581
    :pswitch_3
    move-object/from16 v0, p5

    invoke-static {v9, v8, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz v2, :cond_1d

    .line 584
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 592
    :pswitch_4
    if-eqz v6, :cond_1c

    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 594
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 596
    :cond_1c
    move-object/from16 v0, p5

    invoke-static {v9, v8, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 597
    goto/16 :goto_5

    .line 602
    :pswitch_5
    move-object/from16 v0, p5

    invoke-static {v9, v8, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    if-eqz v2, :cond_1d

    .line 605
    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_1d
    move v1, v5

    goto/16 :goto_5

    :cond_1e
    move-object v1, v2

    goto/16 :goto_4

    :cond_1f
    move-object v1, v3

    goto/16 :goto_3

    :cond_20
    move-object v6, v2

    goto/16 :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1133
    return-void
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 1108
    invoke-static {p1}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    .line 1109
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    .line 1111
    invoke-static {p4, p3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 1113
    invoke-static {p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    .line 1115
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 1116
    if-eqz v1, :cond_0

    .line 1118
    const/4 v2, 0x0

    invoke-static {v1, p3, v0, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;Z)V

    return-void

    .line 1122
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Specified property does not exist"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 967
    return-void
.end method

.method public final setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 781
    if-eqz p3, :cond_0

    const-string v0, "True"

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 782
    return-void

    .line 781
    :cond_0
    const-string v0, "False"

    goto :goto_0
.end method

.method public final setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/XMPDateTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 898
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 899
    return-void
.end method

.method public final setPropertyDouble(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 868
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p3, p4}, Ljava/lang/Double;-><init>(D)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 869
    return-void
.end method

.method public final setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 810
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 811
    return-void
.end method

.method public final sort()V
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPMetaImpl;->tree:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->sort()V

    .line 1258
    return-void
.end method
