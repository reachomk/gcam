.class final Lcom/android/camera/processing/ProcessingService$ServiceController;
.super Landroid/content/BroadcastReceiver;
.source "ProcessingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/ProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceController"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/processing/ProcessingService;


# direct methods
.method private constructor <init>(Lcom/android/camera/processing/ProcessingService;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingService$ServiceController;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/processing/ProcessingService;B)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/processing/ProcessingService$ServiceController;-><init>(Lcom/android/camera/processing/ProcessingService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 52
    const-string v0, "com.android.camera.processing.PAUSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$ServiceController;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v0}, Lcom/android/camera/processing/ProcessingService;->access$000(Lcom/android/camera/processing/ProcessingService;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "com.android.camera.processing.RESUME"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/camera/processing/ProcessingService$ServiceController;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v0}, Lcom/android/camera/processing/ProcessingService;->access$100(Lcom/android/camera/processing/ProcessingService;)V

    goto :goto_0
.end method
