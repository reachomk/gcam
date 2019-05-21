.class public final Lcom/android/camera/activity/main/CameraActivity_MembersInjector;
.super Ljava/lang/Object;
.source "CameraActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/android/camera/activity/main/CameraActivity;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;->traceProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;->appLifetimeProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p3, p0, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;->appLifecycleProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;->flagsProvider:Ljavax/inject/Provider;

    .line 34
    return-void
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 11
    check-cast p1, Lcom/android/camera/activity/main/CameraActivity;

    .line 1047
    if-nez p1, :cond_0

    .line 1048
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;->traceProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->injectTrace(Lcom/android/camera/activity/gca/GcaActivity;Ljavax/inject/Provider;)V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;->appLifetimeProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->injectAppLifetime(Lcom/android/camera/activity/gca/GcaActivity;Ljavax/inject/Provider;)V

    .line 1054
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;->appLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/android/camera/activity/gca/GcaActivity_MembersInjector;->injectAppLifecycle(Lcom/android/camera/activity/gca/GcaActivity;Ljavax/inject/Provider;)V

    .line 1056
    iget-object v0, p0, Lcom/android/camera/activity/main/CameraActivity_MembersInjector;->flagsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/flags/Flags;

    iput-object v0, p1, Lcom/android/camera/activity/main/CameraActivity;->flags:Lcom/android/camera/util/flags/Flags;

    .line 11
    return-void
.end method
