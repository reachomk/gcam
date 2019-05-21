.class public final Lcom/android/camera/app/CameraApp_MembersInjector;
.super Ljava/lang/Object;
.source "CameraApp_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/android/camera/app/CameraApp;",
        ">;"
    }
.end annotation


# instance fields
.field private final buildSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/app/AppProperties$BuildSource;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraAppStartupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CameraAppStartup;",
            ">;"
        }
    .end annotation
.end field

.field private final flagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;"
        }
    .end annotation
.end field

.field private final gcamUsageStatisticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final strictModePolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/StrictModePolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/StrictModePolicy;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/app/AppProperties$BuildSource;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/app/CameraAppStartup;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/stats/GcamUsageStatistics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->strictModePolicyProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->buildSourceProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->cameraAppStartupProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->flagsProvider:Ljavax/inject/Provider;

    .line 45
    return-void
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 12
    check-cast p1, Lcom/android/camera/app/CameraApp;

    .line 1065
    if-nez p1, :cond_0

    .line 1066
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->strictModePolicyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/StrictModePolicy;

    iput-object v0, p1, Lcom/android/camera/app/CameraApp;->strictModePolicy:Lcom/android/camera/debug/StrictModePolicy;

    .line 1069
    iget-object v0, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p1, Lcom/android/camera/app/CameraApp;->notificationManager:Landroid/app/NotificationManager;

    .line 1070
    iget-object v0, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->buildSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/app/AppProperties$BuildSource;

    iput-object v0, p1, Lcom/android/camera/app/CameraApp;->buildSource:Lcom/android/camera/util/app/AppProperties$BuildSource;

    .line 1071
    iget-object v0, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->cameraAppStartupProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/CameraAppStartup;

    iput-object v0, p1, Lcom/android/camera/app/CameraApp;->cameraAppStartup:Lcom/android/camera/app/CameraAppStartup;

    .line 1072
    iget-object v0, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/android/camera/app/CameraApp;->gcamUsageStatisticsProvider:Ljavax/inject/Provider;

    .line 1073
    iget-object v0, p0, Lcom/android/camera/app/CameraApp_MembersInjector;->flagsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    return-void
.end method
