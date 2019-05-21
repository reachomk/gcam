.class public Lcom/adobe/xmp/impl/xpath/XMPPathParser;
.super Ljava/lang/Object;
.source "XMPPathParser.java"


# instance fields
.field public left:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13853
    return-void
.end method

.method public static expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/high16 v5, -0x80000000

    const/4 v9, 0x0

    const/16 v8, 0x5d

    const/4 v7, 0x1

    const/16 v6, 0x66

    .line 86
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 88
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 91
    :cond_1
    new-instance v2, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>()V

    .line 92
    new-instance v3, Lcom/adobe/xmp/impl/xpath/PathPosition;

    invoke-direct {v3}, Lcom/adobe/xmp/impl/xpath/PathPosition;-><init>()V

    .line 93
    iput-object p1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    .line 12338
    :goto_0
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    const-string v0, "/[*"

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 12340
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_0

    .line 12343
    :cond_2
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-ne v0, v1, :cond_3

    .line 12345
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty initial XMPPath step"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 12348
    :cond_3
    iget-object v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12349
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v1

    .line 12350
    if-nez v1, :cond_5

    .line 12353
    new-instance v1, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v1, p0, v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 12354
    new-instance v1, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v1, v0, v7}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 12355
    invoke-virtual {v2, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 100
    :cond_4
    :goto_1
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 102
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 13174
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_7

    .line 13178
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 13181
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 13183
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty XMPPath segment"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 12360
    :cond_5
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 12361
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 12362
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v5

    .line 12361
    invoke-static {v4, v5}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 12364
    invoke-virtual {v0, v7}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    .line 12365
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    .line 12366
    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    .line 12368
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/AliasOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12370
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string v4, "[?xml:lang=\'x-default\']"

    const/4 v5, 0x5

    invoke-direct {v0, v4, v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 12372
    invoke-virtual {v0, v7}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    .line 12373
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    .line 12374
    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto :goto_1

    .line 12376
    :cond_6
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/AliasOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12378
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string v4, "[1]"

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 12380
    invoke-virtual {v0, v7}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    .line 12381
    invoke-interface {v1}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    .line 12382
    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto/16 :goto_1

    .line 13187
    :cond_7
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_9

    .line 13191
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 13192
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_9

    .line 13194
    :cond_8
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \'[\' after \'*\'"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 106
    :cond_9
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 110
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_c

    .line 13208
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 13209
    :goto_2
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_a

    const-string v0, "/[*"

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_a

    .line 13211
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_2

    .line 13213
    :cond_a
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 13215
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-ne v0, v1, :cond_b

    .line 13217
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Empty XMPPath segment"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 13221
    :cond_b
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v5, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 122
    :goto_3
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v1

    if-ne v1, v7, :cond_1d

    .line 124
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x40

    if-ne v1, v4, :cond_1a

    .line 126
    const-string v4, "?"

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    .line 127
    const-string v1, "?xml:lang"

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 129
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Only xml:lang allowed with \'@\'"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 13238
    :cond_c
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 13240
    const/16 v0, 0x30

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v0, v1, :cond_f

    iget-object v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_f

    .line 13243
    :goto_5
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_d

    const/16 v0, 0x30

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v0, v1, :cond_d

    iget-object v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 13244
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_d

    .line 13246
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_5

    .line 13249
    :cond_d
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x3

    invoke-direct {v0, v9, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    .line 13316
    :goto_6
    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_e

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_18

    .line 13318
    :cond_e
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \']\' for array index"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 13255
    :cond_f
    :goto_7
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_10

    iget-object v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_10

    iget-object v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 13256
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_10

    .line 13258
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_7

    .line 13261
    :cond_10
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_11

    .line 13263
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Missing \']\' or \'=\' for array index"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 13266
    :cond_11
    iget-object v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_13

    .line 13268
    const-string v0, "[last()"

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v5, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 13270
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid non-numeric array index"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 13273
    :cond_12
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x4

    invoke-direct {v0, v9, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto :goto_6

    .line 13277
    :cond_13
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 13278
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 13279
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 13280
    iget-object v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 13281
    const/16 v1, 0x27

    if-eq v0, v1, :cond_14

    const/16 v1, 0x22

    if-eq v0, v1, :cond_14

    .line 13283
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Invalid quote in array selector"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 13287
    :cond_14
    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 13288
    :goto_8
    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_16

    .line 13290
    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_15

    .line 13293
    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iget-object v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_16

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v4, v4, 0x1

    .line 13294
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_16

    .line 13298
    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 13300
    :cond_15
    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_8

    .line 13303
    :cond_16
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_17

    .line 13305
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "No terminating quote for array selector"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 13308
    :cond_17
    iget v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 13311
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x6

    invoke-direct {v0, v9, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 13320
    :cond_18
    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    .line 13321
    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v5, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 126
    :cond_19
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 133
    :cond_1a
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3f

    if-ne v1, v4, :cond_1b

    .line 135
    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 136
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setKind(I)V

    .line 139
    :cond_1b
    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v5, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    .line 161
    :cond_1c
    :goto_9
    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto/16 :goto_1

    .line 141
    :cond_1d
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1c

    .line 143
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x40

    if-ne v1, v4, :cond_1f

    .line 145
    const-string v4, "[?"

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "[?xml:lang="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 148
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Only xml:lang allowed with \'@\'"

    invoke-direct {v0, v1, v6}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 145
    :cond_1e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a

    .line 153
    :cond_1f
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3f

    if-ne v1, v4, :cond_1c

    .line 155
    iget v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 156
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setKind(I)V

    .line 157
    iget-object v1, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v4, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v5, v3, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    goto :goto_9

    .line 163
    :cond_20
    return-object v2
.end method

.method private static verifyQualName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x66

    .line 399
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 400
    if-lez v0, :cond_1

    .line 402
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    .line 409
    return-void

    .line 412
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Unknown namespace prefix for qualified name"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 417
    :cond_1
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Ill-formed qualified name"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static verifySimpleXMLName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->isXMLName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Bad XML name"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 435
    :cond_0
    return-void
.end method

.method private static verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x66

    const/16 v3, 0x65

    const/4 v2, 0x0

    .line 458
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 460
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Schema namespace URI is required"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 464
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_3

    .line 466
    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Top level name must not be a qualifier"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 469
    :cond_3
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_4

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    .line 471
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Top level name must be simple"

    invoke-direct {v0, v1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 474
    :cond_5
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    if-nez v0, :cond_6

    .line 477
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Unregistered schema namespace URI"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 482
    :cond_6
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 483
    if-gez v1, :cond_9

    .line 487
    invoke-static {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    .line 488
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 512
    :cond_7
    :goto_0
    return-object p1

    .line 488
    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_9
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    .line 499
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    if-nez v1, :cond_a

    .line 504
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Unknown schema namespace prefix"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 506
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 508
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string v1, "Schema namespace URI and prefix mismatch"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method public setFrom$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UKJ5CDSM6R35E9B6IPBN4HB6IPBN91NMOP35E8TIIJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FA9IM6UB3DHIN4LJ9CLRI8IBKCLMK2RJ9DLGN8RRI4H4N8PBD91NMOP35E94MSPJF7C______(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/adobe/xmp/impl/xpath/XMPPathParser;
    .locals 1

    .prologue
    .line 13863
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->setFrom$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UKJ5CDSM6R35E9B6IPBN4HB6IPBN91NMOP35E8TKIAACC5N68SJFD5I2USRLE1O6USJK5TR3EBRND5I6EPBK5T96AORPCDM6ASIMD5INE929EHIMQGBED5MM2T3FE8I4IT35DL46UR34CLP4IRJ6DSTG____$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UKJ5CDSM6R35E9B6IPBN4HB6IPBN91NMOP35E8TIIJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FA9IM6UB3DHIN4LJ9CLRI8IBKCLMK2RJ9DLGN8RRI4H4N8PBD91NMOP35E94MSPJF7C______(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/adobe/xmp/impl/xpath/XMPPathParser;

    move-result-object v0

    return-object v0
.end method

.method public setFrom$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UKJ5CDSM6R35E9B6IPBN4HB6IPBN91NMOP35E8TKIAACC5N68SJFD5I2USRLE1O6USJK5TR3EBRND5I6EPBK5T96AORPCDM6ASIMD5INE929EHIMQGBED5MM2T3FE8I4IT35DL46UR34CLP4IRJ6DSTG____$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UKJ5CDSM6R35E9B6IPBN4HB6IPBN91NMOP35E8TIIJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FA9IM6UB3DHIN4LJ9CLRI8IBKCLMK2RJ9DLGN8RRI4H4N8PBD91NMOP35E94MSPJF7C______(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Lcom/adobe/xmp/impl/xpath/XMPPathParser;
    .locals 2

    .prologue
    .line 13878
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 13879
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->left:I

    .line 13880
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->top:I

    .line 13881
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 13882
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 13883
    return-object p0
.end method
