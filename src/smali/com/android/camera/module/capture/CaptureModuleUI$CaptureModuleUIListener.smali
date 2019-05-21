.class public Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;
.super Ljava/lang/Object;
.source "CaptureModuleUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModuleUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureModuleUIListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 2593
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomRatioChanged(F)V
    .locals 2

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModuleUI$CaptureModuleUIListener;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$1200(Lcom/android/camera/module/capture/CaptureModule;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 1597
    return-void
.end method
