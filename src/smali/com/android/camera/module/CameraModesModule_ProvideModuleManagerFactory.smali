.class public final Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;
.super Ljava/lang/Object;
.source "CameraModesModule_ProvideModuleManagerFactory.java"

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
.field private final androidServicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
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

.field private final panoramaModuleAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private final photoIntentModuleAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private final photoModuleAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private final photosphereModuleAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private final refocusModuleAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final videoHfrModuleAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private final videoIntentModuleAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field

.field private final videoModuleAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/ModuleManager$ModuleAgent;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/inject/app/AndroidServices;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p2, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->photoModuleAgentProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p3, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->videoModuleAgentProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p4, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->photoIntentModuleAgentProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p5, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->videoIntentModuleAgentProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->panoramaModuleAgentProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p7, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->photosphereModuleAgentProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p8, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->refocusModuleAgentProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p9, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->videoHfrModuleAgentProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p10, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p11, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p12, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->traceProvider:Ljavax/inject/Provider;

    .line 75
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 12

    .prologue
    .line 12
    .line 1079
    iget-object v0, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 1081
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->photoModuleAgentProvider:Ljavax/inject/Provider;

    .line 1082
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    iget-object v2, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->videoModuleAgentProvider:Ljavax/inject/Provider;

    .line 1083
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    iget-object v3, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->photoIntentModuleAgentProvider:Ljavax/inject/Provider;

    .line 1084
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    iget-object v4, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->videoIntentModuleAgentProvider:Ljavax/inject/Provider;

    .line 1085
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/ModuleManager$ModuleAgent;

    iget-object v5, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->panoramaModuleAgentProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->photosphereModuleAgentProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->refocusModuleAgentProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->videoHfrModuleAgentProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1090
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/one/OneCameraManager;

    iget-object v10, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->androidServicesProvider:Ljavax/inject/Provider;

    .line 1091
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/inject/app/AndroidServices;

    iget-object v11, p0, Lcom/android/camera/module/CameraModesModule_ProvideModuleManagerFactory;->traceProvider:Ljavax/inject/Provider;

    .line 1092
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/debug/trace/Trace;

    .line 1080
    invoke-static/range {v0 .. v11}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideModuleManager(Landroid/content/Context;Lcom/android/camera/module/ModuleManager$ModuleAgent;Lcom/android/camera/module/ModuleManager$ModuleAgent;Lcom/android/camera/module/ModuleManager$ModuleAgent;Lcom/android/camera/module/ModuleManager$ModuleAgent;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/camera/one/OneCameraManager;Lcom/google/android/apps/camera/inject/app/AndroidServices;Lcom/android/camera/debug/trace/Trace;)Lcom/android/camera/module/ModuleManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1079
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/ModuleManager;

    .line 12
    return-object v0
.end method
