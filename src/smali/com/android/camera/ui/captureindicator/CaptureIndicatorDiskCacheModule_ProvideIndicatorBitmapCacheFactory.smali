.class public final Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory;
.super Ljava/lang/Object;
.source "CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final diskCacheFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final logFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory;->diskCacheFutureProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory;->executorProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 33
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 14
    .line 1037
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory;->diskCacheFutureProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorBitmapCacheFactory;->logFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/debug/Logger$Factory;

    .line 1038
    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule;->provideIndicatorBitmapCache(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/storage/cache/SingleKeyCache;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1037
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/cache/SingleKeyCache;

    .line 14
    return-object v0
.end method
