.class final Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;
.super Ljava/lang/Object;
.source "DaggerCameraAppComponent.java"

# interfaces
.implements Lcom/google/android/apps/refocus/ViewerActivityComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/DaggerCameraAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewerActivityComponentImpl"
.end annotation


# instance fields
.field private captureModuleSoundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/module/capture/CaptureModuleSoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

.field private provideActivityLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private provideSoundPlayerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/audio/SoundPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private soundPlayerImplProvider:Ljavax/inject/Provider;

.field private synthetic this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

.field private viewerActivityMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/google/android/apps/refocus/ViewerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V
    .locals 8

    .prologue
    .line 5023
    iput-object p1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5024
    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/activity/gca/GcaActivityModule;

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 5025
    invoke-static {p3}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6032
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->gcaActivityModule:Lcom/android/camera/activity/gca/GcaActivityModule;

    .line 6033
    invoke-static {v0}, Lcom/android/camera/activity/gca/GcaActivityModule_ProvideActivityLifetimeFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGM6T39EPKN8U9FCTHM2BQ7CDGK2ORKD5R6IT3P9LNM8TBCCKTIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Lcom/android/camera/activity/gca/GcaActivityModule;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->provideActivityLifetimeProvider:Ljavax/inject/Provider;

    .line 6035
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6038
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2300(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 6037
    invoke-static {v0}, Lcom/android/camera/audio/SoundPlayerImpl_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 6036
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->soundPlayerImplProvider:Ljavax/inject/Provider;

    .line 6040
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->provideActivityLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->soundPlayerImplProvider:Ljavax/inject/Provider;

    .line 6042
    invoke-static {v0, v1}, Lcom/android/camera/audio/AudioModule_ProvideSoundPlayerFactory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 6041
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->provideSoundPlayerProvider:Ljavax/inject/Provider;

    .line 6045
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->provideSoundPlayerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6048
    invoke-static {v1}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 6047
    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModuleSoundPlayer_Factory;->create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    .line 6046
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 6050
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6052
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2400(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6053
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$13800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6054
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$13900(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v3

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6055
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$4000(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v4

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6056
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$2700(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->this$0:Lcom/android/camera/app/DaggerCameraAppComponent;

    .line 6057
    invoke-static {v0}, Lcom/android/camera/app/DaggerCameraAppComponent;->access$10800(Lcom/android/camera/app/DaggerCameraAppComponent;)Ljavax/inject/Provider;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->captureModuleSoundPlayerProvider:Ljavax/inject/Provider;

    .line 6062
    new-instance v0, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/refocus/ViewerActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 6051
    iput-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->viewerActivityMembersInjector:Ldagger/MembersInjector;

    .line 5027
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;B)V
    .locals 0

    .prologue
    .line 5006
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;-><init>(Lcom/android/camera/app/DaggerCameraAppComponent;Lcom/android/camera/activity/gca/GcaActivityModule;Lcom/google/android/apps/camera/inject/activity/ActivityModule;)V

    return-void
.end method


# virtual methods
.method public final inject(Lcom/google/android/apps/refocus/ViewerActivity;)V
    .locals 1

    .prologue
    .line 5063
    iget-object v0, p0, Lcom/android/camera/app/DaggerCameraAppComponent$ViewerActivityComponentImpl;->viewerActivityMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 5064
    return-void
.end method
