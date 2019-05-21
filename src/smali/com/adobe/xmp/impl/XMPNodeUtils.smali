.class public Lcom/adobe/xmp/impl/XMPNodeUtils;
.super Ljava/lang/Object;
.source "XMPNodeUtils.java"


# direct methods
.method static appendLangItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 780
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string v1, "[]"

    invoke-direct {v0, v1, p2, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 781
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string v2, "xml:lang"

    invoke-direct {v1, v2, p1, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 782
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 784
    const-string v2, "x-default"

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method static deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 311
    :goto_0
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getParent()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 315
    :cond_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method static detectAltText(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 747
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    const/4 v2, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 753
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 760
    :goto_0
    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 763
    invoke-static {p0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 766
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x66

    const/4 v2, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Named children only allowed for schemas and structs"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Named children not allowed for arrays"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 162
    :cond_1
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 168
    :cond_2
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 170
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 172
    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 173
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v0, p1, v1}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 174
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 180
    :cond_3
    return-object v0
.end method

.method private static findIndexedItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x66

    const/4 v4, 0x1

    .line 568
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 570
    if-gtz v0, :cond_0

    .line 572
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Array index must be larger than zero"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :catch_0
    move-exception v0

    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Array index not digits."

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 581
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 584
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string v2, "[]"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 585
    invoke-virtual {v1, v4}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 586
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 589
    :cond_1
    return v0
.end method

.method static findNode(Lcom/adobe/xmp/impl/XMPNode;Lcom/adobe/xmp/impl/xpath/XMPPath;ZLcom/adobe/xmp/options/PropertyOptions;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty XMPPath"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 212
    const/4 v1, 0x0

    .line 213
    invoke-virtual {p1, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2076
    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 214
    if-nez v1, :cond_2

    .line 216
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    .line 218
    :cond_2
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    move-object v0, v1

    .line 228
    :cond_3
    const/4 v2, 0x1

    move v4, v2

    move-object v3, v1

    move-object v2, v0

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v0

    if-ge v4, v0, :cond_19

    .line 230
    invoke-virtual {p1, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v0

    .line 2460
    const/4 v5, 0x0

    .line 2462
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v1

    .line 2464
    const/4 v6, 0x1

    if-ne v1, v6, :cond_5

    .line 2466
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 231
    :goto_2
    if-nez v1, :cond_16

    .line 233
    if-eqz p2, :cond_4

    .line 236
    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 238
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 2468
    :cond_5
    const/4 v6, 0x2

    if-ne v1, v6, :cond_7

    .line 2471
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2540
    invoke-virtual {v3, v1}, Lcom/adobe/xmp/impl/XMPNode;->findQualifierByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 2542
    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 2544
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 2545
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 2547
    invoke-virtual {v3, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    :cond_6
    move-object v1, v0

    .line 2470
    goto :goto_2

    .line 2477
    :cond_7
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v6

    if-nez v6, :cond_9

    .line 2479
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Indexing applied to non-array"

    const/16 v3, 0x66

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :catch_0
    move-exception v0

    .line 271
    if-eqz v2, :cond_8

    .line 273
    invoke-static {v2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 275
    :cond_8
    throw v0

    .line 2482
    :cond_9
    const/4 v6, 0x3

    if-ne v1, v6, :cond_b

    .line 2484
    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p2}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findIndexedItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Z)I

    move-result v0

    .line 2511
    :cond_a
    :goto_3
    if-lez v0, :cond_1c

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v1

    if-gt v0, v1, :cond_1c

    .line 2513
    invoke-virtual {v3, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    goto :goto_2

    .line 2486
    :cond_b
    const/4 v6, 0x4

    if-ne v1, v6, :cond_c

    .line 2488
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    goto :goto_3

    .line 2490
    :cond_c
    const/4 v6, 0x6

    if-ne v1, v6, :cond_10

    .line 2492
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2493
    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 2494
    const/4 v1, 0x1

    aget-object v8, v0, v1

    .line 2607
    const/4 v0, -0x1

    .line 2609
    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v6

    if-gt v1, v6, :cond_a

    if-gez v0, :cond_a

    .line 2611
    invoke-virtual {v3, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v9

    .line 2613
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v6

    if-nez v6, :cond_d

    .line 2615
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Field selector must be used on array of struct"

    const/16 v3, 0x66

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2619
    :cond_d
    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v9}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v10

    if-gt v6, v10, :cond_e

    .line 2621
    invoke-virtual {v9, v6}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v10

    .line 2622
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2626
    invoke-virtual {v10}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    move v0, v1

    .line 2609
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2619
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2497
    :cond_10
    const/4 v6, 0x5

    if-ne v1, v6, :cond_15

    .line 2499
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2500
    const/4 v6, 0x0

    aget-object v6, v1, v6

    .line 2501
    const/4 v7, 0x1

    aget-object v7, v1, v7

    .line 2503
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v1

    .line 2655
    const-string v0, "xml:lang"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2657
    invoke-static {v7}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2658
    invoke-static {v3, v0}, Lcom/adobe/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result v0

    .line 2659
    if-gez v0, :cond_a

    and-int/lit16 v1, v1, 0x1000

    if-lez v1, :cond_a

    .line 2661
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode;

    const-string v1, "[]"

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 2662
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    const-string v6, "xml:lang"

    const-string v7, "x-default"

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, v8}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 2663
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 2664
    const/4 v1, 0x1

    invoke-virtual {v3, v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 2665
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 2674
    :cond_11
    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    if-ge v1, v0, :cond_14

    .line 2676
    invoke-virtual {v3, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 2678
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2680
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 2681
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2682
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    .line 2684
    goto/16 :goto_3

    .line 2674
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2688
    :cond_14
    const/4 v0, -0x1

    goto/16 :goto_3

    .line 2507
    :cond_15
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Unknown array indexing step in FollowXPathStep"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 240
    :cond_16
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->isImplicit()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 243
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 247
    const/4 v0, 0x1

    if-ne v4, v0, :cond_18

    .line 248
    invoke-virtual {p1, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 249
    invoke-virtual {p1, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v0

    if-eqz v0, :cond_18

    .line 251
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {p1, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 261
    :cond_17
    :goto_7
    if-nez v2, :cond_1b

    move-object v0, v1

    .line 228
    :goto_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move-object v2, v0

    goto/16 :goto_1

    .line 254
    :cond_18
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_17

    .line 255
    invoke-virtual {p1, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_17

    .line 256
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 258
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 279
    :cond_19
    if-eqz v2, :cond_1a

    .line 282
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 283
    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adobe/xmp/impl/XMPNode;->setOptions(Lcom/adobe/xmp/options/PropertyOptions;)V

    :cond_1a
    move-object v0, v3

    .line 286
    goto/16 :goto_0

    :cond_1b
    move-object v0, v2

    goto :goto_8

    :cond_1c
    move-object v1, v5

    goto/16 :goto_2
.end method

.method static findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    .line 102
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 104
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 1299
    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 106
    invoke-direct {v1, p1, v0}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 107
    invoke-virtual {v1, v3}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 110
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 113
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_0
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    move-object v0, v1

    .line 130
    :cond_1
    return-object v0

    .line 120
    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Unregistered schema namespace URI"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static lookupLanguageItem(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 904
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Language item must be used on array"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    move v0, v1

    .line 909
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 911
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 912
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "xml:lang"

    invoke-virtual {v2, v1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 916
    invoke-virtual {v2, v1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 922
    :goto_1
    return v0

    .line 909
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 922
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x2

    .line 705
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    .line 711
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 713
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 714
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "x-default"

    invoke-virtual {v2, v5}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 719
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->removeChild(I)V

    .line 720
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_2
    if-ne v0, v1, :cond_0

    .line 730
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method static verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 351
    if-nez p0, :cond_0

    .line 354
    new-instance p0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {p0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 367
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 372
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 374
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Structs and arrays can\'t have values"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 378
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->assertConsistency(I)V

    .line 380
    return-object p0
.end method
