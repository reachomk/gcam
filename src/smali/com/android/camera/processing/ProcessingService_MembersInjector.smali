.class public final Lcom/android/camera/processing/ProcessingService_MembersInjector;
.super Ljava/lang/Object;
.source "ProcessingService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/android/camera/processing/ProcessingService;",
        ">;"
    }
.end annotation


# instance fields
.field private final localBroadcastManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager;",
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

.field private final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final processingServiceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/ProcessingServiceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->processingServiceManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->powerManagerProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p4, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->localBroadcastManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->traceProvider:Ljavax/inject/Provider;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 11
    check-cast p1, Lcom/android/camera/processing/ProcessingService;

    .line 1057
    if-nez p1, :cond_0

    .line 1058
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p1, Lcom/android/camera/processing/ProcessingService;->notificationManager:Landroid/app/NotificationManager;

    .line 1061
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->processingServiceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/processing/ProcessingServiceManager;

    iput-object v0, p1, Lcom/android/camera/processing/ProcessingService;->processingServiceManager:Lcom/android/camera/processing/ProcessingServiceManager;

    .line 1062
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p1, Lcom/android/camera/processing/ProcessingService;->powerManager:Landroid/os/PowerManager;

    .line 1063
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->localBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager;

    iput-object v0, p1, Lcom/android/camera/processing/ProcessingService;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 1064
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService_MembersInjector;->traceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/trace/Trace;

    iput-object v0, p1, Lcom/android/camera/processing/ProcessingService;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 11
    return-void
.end method
