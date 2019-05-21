.class public final Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorCachePreInitializerFactory;
.super Ljava/lang/Object;
.source "CaptureIndicatorDiskCacheModule_ProvideIndicatorCachePreInitializerFactory.java"

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

.field private final singleKeyCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorCachePreInitializerFactory;->singleKeyCacheProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorCachePreInitializerFactory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 12
    .line 1030
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorCachePreInitializerFactory;->singleKeyCacheProvider:Ljavax/inject/Provider;

    .line 1032
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/storage/cache/SingleKeyCache;

    iget-object v1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule_ProvideIndicatorCachePreInitializerFactory;->logFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/debug/Logger$Factory;

    .line 1031
    invoke-static {v0, v1}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule;->provideIndicatorCachePreInitializer(Lcom/android/camera/storage/cache/SingleKeyCache;Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/behavior/Behavior;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1030
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/behavior/Behavior;

    .line 12
    return-object v0
.end method
