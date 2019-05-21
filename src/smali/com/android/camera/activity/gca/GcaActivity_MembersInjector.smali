.class public final Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;
.super Ljava/lang/Object;
.source "GcaActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/android/camera/activity/gca/GcaActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final appLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifecycle/AppLifecycle;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifecycle/AppLifecycle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->traceProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->appLifecycleProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method

.method public static injectAppLifecycle(Lcom/android/camera/activity/gca/GcaActivity;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/activity/gca/GcaActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifecycle/AppLifecycle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/lifecycle/AppLifecycle;

    iput-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->appLifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    .line 60
    return-void
.end method

.method public static injectAppLifetime(Lcom/android/camera/activity/gca/GcaActivity;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/activity/gca/GcaActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/AppLifetime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/lifetime/AppLifetime;

    iput-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

    .line 55
    return-void
.end method

.method public static injectTrace(Lcom/android/camera/activity/gca/GcaActivity;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/activity/gca/GcaActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/trace/Trace;

    iput-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 50
    return-void
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    check-cast p1, Lcom/android/camera/activity/gca/GcaActivity;

    .line 1040
    if-nez p1, :cond_0

    .line 1041
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->traceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/trace/Trace;

    iput-object v0, p1, Lcom/android/camera/activity/gca/GcaActivity;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 1044
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->appLifetimeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/lifetime/AppLifetime;

    iput-object v0, p1, Lcom/android/camera/activity/gca/GcaActivity;->appLifetime:Lcom/android/camera/util/lifetime/AppLifetime;

    .line 1045
    iget-object v0, p0, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->appLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/lifecycle/AppLifecycle;

    iput-object v0, p1, Lcom/android/camera/activity/gca/GcaActivity;->appLifecycle:Lcom/android/camera/util/lifecycle/AppLifecycle;

    .line 10
    return-void
.end method
