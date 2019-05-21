.class public final Lcom/android/camera/settings/AppSettingsModule_ProvidePictureSizeLoaderFactory;
.super Ljava/lang/Object;
.source "AppSettingsModule_ProvidePictureSizeLoaderFactory.java"

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
.field private final camcorderManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
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
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/camcorder/CamcorderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePictureSizeLoaderFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePictureSizeLoaderFactory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePictureSizeLoaderFactory;->camcorderManagerProvider:Ljavax/inject/Provider;

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 11
    .line 1034
    iget-object v0, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePictureSizeLoaderFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1036
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iget-object v1, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePictureSizeLoaderFactory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1037
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCameraManager;

    iget-object v2, p0, Lcom/android/camera/settings/AppSettingsModule_ProvidePictureSizeLoaderFactory;->camcorderManagerProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/camcorder/CamcorderManager;

    .line 1043
    new-instance v3, Lcom/android/camera/settings/PictureSizeLoader;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/settings/PictureSizeLoader;-><init>(Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/camcorder/CamcorderManager;)V

    .line 1035
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1034
    invoke-static {v3, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/PictureSizeLoader;

    .line 11
    return-object v0
.end method
