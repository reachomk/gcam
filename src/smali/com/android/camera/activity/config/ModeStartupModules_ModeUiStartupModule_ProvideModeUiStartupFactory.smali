.class public final Lcom/android/camera/activity/config/ModeStartupModules_ModeUiStartupModule_ProvideModeUiStartupFactory;
.super Ljava/lang/Object;
.source "ModeStartupModules_ModeUiStartupModule_ProvideModeUiStartupFactory.java"

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
.field private final cameraModeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field private final captureModeUiStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModeUiStartup;",
            ">;"
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
            "Lcom/android/camera/util/CameraMode;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModeUiStartup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/activity/config/ModeStartupModules_ModeUiStartupModule_ProvideModeUiStartupFactory;->cameraModeProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/camera/activity/config/ModeStartupModules_ModeUiStartupModule_ProvideModeUiStartupFactory;->captureModeUiStartupProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11
    .line 1029
    iget-object v0, p0, Lcom/android/camera/activity/config/ModeStartupModules_ModeUiStartupModule_ProvideModeUiStartupFactory;->cameraModeProvider:Ljavax/inject/Provider;

    .line 1031
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/CameraMode;

    iget-object v1, p0, Lcom/android/camera/activity/config/ModeStartupModules_ModeUiStartupModule_ProvideModeUiStartupFactory;->captureModeUiStartupProvider:Ljavax/inject/Provider;

    .line 1055
    invoke-virtual {v0}, Lcom/android/camera/util/CameraMode;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1065
    new-instance v0, Lcom/android/camera/activity/config/ModeStartupModules$1;

    invoke-direct {v0}, Lcom/android/camera/activity/config/ModeStartupModules$1;-><init>()V

    .line 1030
    :goto_0
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1029
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Initializer;

    .line 11
    return-object v0

    .line 1057
    :pswitch_0
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Initializer;

    goto :goto_0

    .line 1055
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
