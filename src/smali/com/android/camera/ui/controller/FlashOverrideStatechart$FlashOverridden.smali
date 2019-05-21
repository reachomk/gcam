.class Lcom/android/camera/ui/controller/FlashOverrideStatechart$FlashOverridden;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "FlashOverrideStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/FlashOverrideStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlashOverridden"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/FlashOverrideStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/FlashOverrideStatechart;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/camera/ui/controller/FlashOverrideStatechart$FlashOverridden;->this$0:Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([C)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/controller/FlashOverrideStatechart$FlashOverridden;->this$0:Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/FlashOverrideStatechart;->access$000(Lcom/android/camera/ui/controller/FlashOverrideStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->grayFlashOption()V

    .line 34
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/controller/FlashOverrideStatechart$FlashOverridden;->this$0:Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/FlashOverrideStatechart;->access$000(Lcom/android/camera/ui/controller/FlashOverrideStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->unGrayFlashOption()V

    .line 39
    return-void
.end method

.method public onEvCompUnSet()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
