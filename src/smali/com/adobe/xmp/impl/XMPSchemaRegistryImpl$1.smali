.class final Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;
.super Ljava/lang/Object;
.source "XMPSchemaRegistryImpl.java"

# interfaces
.implements Lcom/adobe/xmp/properties/XMPAliasInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$actualNS:Ljava/lang/String;

.field private synthetic val$actualPrefix:Ljava/lang/String;

.field private synthetic val$actualProp:Ljava/lang/String;

.field private synthetic val$aliasOpts:Lcom/adobe/xmp/options/AliasOptions;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualNS:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualPrefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualProp:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$aliasOpts:Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAliasForm()Lcom/adobe/xmp/options/AliasOptions;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$aliasOpts:Lcom/adobe/xmp/options/AliasOptions;

    return-object v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualNS:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualProp:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 416
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualProp:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$actualNS:Ljava/lang/String;

    .line 1411
    iget-object v3, p0, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;->val$aliasOpts:Lcom/adobe/xmp/options/AliasOptions;

    .line 417
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), FORM ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    return-object v0
.end method
