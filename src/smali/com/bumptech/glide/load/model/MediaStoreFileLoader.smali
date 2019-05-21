.class public final Lcom/bumptech/glide/load/model/MediaStoreFileLoader;
.super Ljava/lang/Object;
.source "MediaStoreFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/MediaStoreFileLoader$Factory;,
        Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public final synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 4

    .prologue
    .line 20
    check-cast p1, Landroid/net/Uri;

    .line 2030
    new-instance v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;

    iget-object v3, p0, Lcom/bumptech/glide/load/model/MediaStoreFileLoader;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/bumptech/glide/load/model/MediaStoreFileLoader$FilePathFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    .line 20
    return-object v0
.end method

.method public final synthetic handles(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    check-cast p1, Landroid/net/Uri;

    .line 1035
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    .line 20
    return v0
.end method
