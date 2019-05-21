.class final Lcom/android/camera/module/capture/CaptureModule$20;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->takePictureNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$20;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$20;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$20;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModule;->access$2800(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/module/capture/CaptureButtonReadiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/capture/CaptureButtonReadiness;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModule;->access$600(Lcom/android/camera/module/capture/CaptureModule;Z)V

    .line 1038
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$20;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$2900(Lcom/android/camera/module/capture/CaptureModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$20;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$3000(Lcom/android/camera/module/capture/CaptureModule;)V

    .line 1041
    :cond_0
    return-void
.end method
