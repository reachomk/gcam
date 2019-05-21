.class public final Lcom/android/camera/activity/config/CameraServicesModule_ProvideCameraServicesFactory;
.super Ljava/lang/Object;
.source "CameraServicesModule_ProvideCameraServicesFactory.java"

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
.field private final cameraServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/activity/config/CameraServicesModule_ProvideCameraServicesFactory;->cameraServicesProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1021
    iget-object v0, p0, Lcom/android/camera/activity/config/CameraServicesModule_ProvideCameraServicesFactory;->cameraServicesProvider:Ljavax/inject/Provider;

    .line 1022
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideCameraServices$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCDNMSPJ9CSNK6OBDCLP62KR5E9R6IOR5ED4MQS3C7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2ORKD5R6IT3P5THMURJ6D5JIUGR1DLIN4OAJCLP7CQB3CLPJM___(Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;)Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1021
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/config/ModeStartupModules$ModeUiStartupModule;

    .line 8
    return-object v0
.end method
