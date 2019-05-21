.class Lcom/adobe/xmp/impl/XMPNode;
.super Ljava/lang/Object;
.source "XMPNode.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private alias:Z

.field private children:Ljava/util/List;

.field private hasAliases:Z

.field private hasValueChild:Z

.field private implicit:Z

.field private name:Ljava/lang/String;

.field private options:Lcom/adobe/xmp/options/PropertyOptions;

.field private parent:Lcom/adobe/xmp/impl/XMPNode;

.field private qualifier:Ljava/util/List;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    .line 51
    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    .line 75
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    .line 78
    return-void
.end method

.method private final assertChildNotExisting(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 899
    const-string v0, "[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 902
    new-instance v0, Lcom/adobe/xmp/XMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Duplicate property or field node \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 905
    :cond_0
    return-void
.end method

.method private cleanupChildren()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    .line 203
    :cond_0
    return-void
.end method

.method private static find(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 3

    .prologue
    .line 877
    if-eqz p0, :cond_1

    .line 879
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 10507
    iget-object v2, v0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 882
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getChildren()Ljava/util/List;
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    return-object v0
.end method

.method private final getQualifier()Ljava/util/List;
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    return-object v0
.end method

.method private final isLanguageNode()Z
    .locals 2

    .prologue
    .line 805
    const-string v0, "xml:lang"

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isTypeNode()Z
    .locals 2

    .prologue
    .line 814
    const-string v0, "rdf:type"

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final addChild(ILcom/adobe/xmp/impl/XMPNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 149
    .line 2507
    iget-object v0, p2, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 149
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->assertChildNotExisting(Ljava/lang/String;)V

    .line 2864
    iput-object p0, p2, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    .line 151
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method public final addChild(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 133
    .line 1507
    iget-object v0, p1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 133
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->assertChildNotExisting(Ljava/lang/String;)V

    .line 1864
    iput-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    .line 135
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method public final addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 264
    .line 4507
    iget-object v2, p1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 4915
    const-string v3, "[]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4916
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->findQualifierByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4918
    new-instance v0, Lcom/adobe/xmp/XMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Duplicate \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' qualifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 5864
    :cond_0
    iput-object p0, p1, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    .line 266
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    .line 6134
    const/16 v3, 0x20

    invoke-virtual {v2, v3, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 267
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setHasQualifiers(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 270
    invoke-direct {p1}, Lcom/adobe/xmp/impl/XMPNode;->isLanguageNode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {v2, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setHasLanguage(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 274
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 289
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-direct {p1}, Lcom/adobe/xmp/impl/XMPNode;->isTypeNode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {v2, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setHasType(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 280
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    .line 281
    invoke-virtual {v3}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 280
    :goto_1
    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 281
    goto :goto_1

    .line 287
    :cond_3
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 427
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    :goto_0
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 6452
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6454
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 6455
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 438
    :cond_0
    return-object v1

    .line 432
    :catch_1
    move-exception v0

    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    goto :goto_0

    .line 6458
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6460
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 6461
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    check-cast p1, Lcom/adobe/xmp/impl/XMPNode;

    .line 6525
    iget-object v1, p1, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 497
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    check-cast p1, Lcom/adobe/xmp/impl/XMPNode;

    .line 7507
    iget-object v1, p1, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final findChildByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPNode;->find(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    return-object v0
.end method

.method public final findQualifierByName(Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/adobe/xmp/impl/XMPNode;->find(Ljava/util/List;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    return-object v0
.end method

.method public final getChild(I)Lcom/adobe/xmp/impl/XMPNode;
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    return-object v0
.end method

.method public final getChildrenLength()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    .line 220
    goto :goto_0
.end method

.method public final getHasAliases()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    return v0
.end method

.method public final getHasValueChild()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/adobe/xmp/impl/XMPNode;->hasValueChild:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOptions()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v0}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    return-object v0
.end method

.method public final getParent()Lcom/adobe/xmp/impl/XMPNode;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    return-object v0
.end method

.method public final getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    return-object v0
.end method

.method public final getQualifierLength()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    .line 251
    goto :goto_0
.end method

.method public final getUnmodifiableChildren()Ljava/util/List;
    .locals 2

    .prologue
    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final hasChildren()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasQualifier()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAlias()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/adobe/xmp/impl/XMPNode;->alias:Z

    return v0
.end method

.method public final isImplicit()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/adobe/xmp/impl/XMPNode;->implicit:Z

    return v0
.end method

.method public final iterateChildren()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final iterateQualifier()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 390
    new-instance v0, Lcom/adobe/xmp/impl/XMPNode$1;

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/XMPNode$1;-><init>(Ljava/util/Iterator;)V

    .line 412
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public final removeChild(I)V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 175
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->cleanupChildren()V

    .line 176
    return-void
.end method

.method public final removeChild(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->cleanupChildren()V

    .line 189
    return-void
.end method

.method public final removeChildren()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    .line 212
    return-void
.end method

.method public final removeQualifier(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 299
    invoke-direct {p1}, Lcom/adobe/xmp/impl/XMPNode;->isLanguageNode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setHasLanguage(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 310
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 311
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setHasQualifiers(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    .line 317
    :cond_1
    return-void

    .line 304
    :cond_2
    invoke-direct {p1}, Lcom/adobe/xmp/impl/XMPNode;->isTypeNode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setHasType(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_0
.end method

.method public final removeQualifiers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setHasQualifiers(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 328
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setHasLanguage(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 329
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;->setHasType(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    .line 331
    return-void
.end method

.method public final replaceChild(ILcom/adobe/xmp/impl/XMPNode;)V
    .locals 2

    .prologue
    .line 163
    .line 3864
    iput-object p0, p2, Lcom/adobe/xmp/impl/XMPNode;->parent:Lcom/adobe/xmp/impl/XMPNode;

    .line 164
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildren()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public final setAlias(Z)V
    .locals 0

    .prologue
    .line 611
    iput-boolean p1, p0, Lcom/adobe/xmp/impl/XMPNode;->alias:Z

    .line 612
    return-void
.end method

.method public final setHasAliases(Z)V
    .locals 0

    .prologue
    .line 593
    iput-boolean p1, p0, Lcom/adobe/xmp/impl/XMPNode;->hasAliases:Z

    .line 594
    return-void
.end method

.method public final setHasValueChild(Z)V
    .locals 0

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/adobe/xmp/impl/XMPNode;->hasValueChild:Z

    .line 630
    return-void
.end method

.method public final setImplicit(Z)V
    .locals 0

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/adobe/xmp/impl/XMPNode;->implicit:Z

    .line 576
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public final setOptions(Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode;->options:Lcom/adobe/xmp/options/PropertyOptions;

    .line 558
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPNode;->value:Ljava/lang/String;

    .line 535
    return-void
.end method

.method public final sort()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier()Ljava/util/List;

    move-result-object v0

    .line 651
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v1

    new-array v1, v1, [Lcom/adobe/xmp/impl/XMPNode;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/xmp/impl/XMPNode;

    move v1, v2

    .line 653
    :goto_0
    array-length v3, v0

    if-le v3, v1, :cond_1

    const-string v3, "xml:lang"

    aget-object v4, v0, v1

    .line 8507
    iget-object v4, v4, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 655
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "rdf:type"

    aget-object v4, v0, v1

    .line 9507
    iget-object v4, v4, Lcom/adobe/xmp/impl/XMPNode;->name:Ljava/lang/String;

    .line 656
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    :cond_0
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->sort()V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    :cond_1
    array-length v3, v0

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 664
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPNode;->qualifier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 665
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 667
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 668
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 669
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/adobe/xmp/impl/XMPNode;->sort()V

    .line 665
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 674
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    .line 678
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPNode;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 680
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 682
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->sort()V

    goto :goto_2

    .line 686
    :cond_4
    return-void
.end method
