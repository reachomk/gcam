.class final Lcom/android/camera/storage/StorageImpl$1;
.super Landroid/util/LruCache;
.source "StorageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/StorageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Landroid/net/Uri;",
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 43
    const/high16 v0, 0x1400000

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p2, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;

    .line 1046
    invoke-virtual {p2}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;->getSize()I

    move-result v0

    .line 43
    return v0
.end method
