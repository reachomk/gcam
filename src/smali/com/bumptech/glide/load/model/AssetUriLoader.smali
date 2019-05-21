.class public final Lcom/bumptech/glide/load/model/AssetUriLoader;
.super Ljava/lang/Object;
.source "AssetUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/AssetUriLoader$FileDescriptorFactory;,
        Lcom/bumptech/glide/load/model/AssetUriLoader$StreamFactory;,
        Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final ASSET_PREFIX_LENGTH:I


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final factory:Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x16

    sput v0, Lcom/bumptech/glide/load/model/AssetUriLoader;->ASSET_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/model/AssetUriLoader;->assetManager:Landroid/content/res/AssetManager;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/model/AssetUriLoader;->factory:Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;

    .line 31
    return-void
.end method


# virtual methods
.method public final synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 5

    .prologue
    .line 19
    check-cast p1, Landroid/net/Uri;

    .line 2036
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/bumptech/glide/load/model/AssetUriLoader;->ASSET_PREFIX_LENGTH:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2037
    new-instance v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance v2, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {v2, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/model/AssetUriLoader;->factory:Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;

    iget-object v4, p0, Lcom/bumptech/glide/load/model/AssetUriLoader;->assetManager:Landroid/content/res/AssetManager;

    invoke-interface {v3, v4, v0}, Lcom/bumptech/glide/load/model/AssetUriLoader$AssetFetcherFactory;->buildFetcher(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 19
    return-object v1
.end method

.method public final synthetic handles(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 19
    check-cast p1, Landroid/net/Uri;

    .line 1042
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 1043
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android_asset"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
