.class public final Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;
.super Ljava/lang/Object;
.source "SceneChangeMonitor_Factory.java"

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
.field private final appLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/util/time/UtcClock;",
            ">;"
        }
    .end annotation
.end field

.field private final countingDownStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final evScrollingStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final sceneChangeMonitorMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/util/time/UtcClock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->sceneChangeMonitorMembersInjector:Ldagger/MembersInjector;

    .line 33
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->evScrollingStateProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->countingDownStateProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 40
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 1044
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->sceneChangeMonitorMembersInjector:Ldagger/MembersInjector;

    new-instance v5, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;

    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->evScrollingStateProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->countingDownStateProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Observable;

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/lifetime/AppLifetime;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/util/time/UtcClock;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;-><init>(Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/util/lifetime/AppLifetime;Lcom/google/android/apps/camera/util/time/UtcClock;)V

    .line 1044
    invoke-static {v4, v5}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/SceneChangeMonitor;

    .line 12
    return-object v0
.end method
