.class final Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart$2;
.super Lcom/android/camera/ui/controller/FlashOverrideStatechart$FlashOverridden;
.source "GeneratedFlashOverrideStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/FlashOverrideStatechart$FlashOverridden;-><init>(Lcom/android/camera/ui/controller/FlashOverrideStatechart;)V

    return-void
.end method


# virtual methods
.method public final onEvCompUnSet()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 34
    invoke-super {p0}, Lcom/android/camera/ui/controller/FlashOverrideStatechart$FlashOverridden;->onEvCompUnSet()V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;->access$200(Lcom/android/camera/ui/controller/GeneratedFlashOverrideStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 36
    return-void
.end method
