.class Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$Shown;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;
.source "OptionsBarStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shown"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$Shown;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarVisibilityState;-><init>()V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$Shown;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->access$000(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$Shown;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->access$100(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;)Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/ViewMagnet;->setVisibility(I)V

    .line 58
    return-void
.end method

.method public fadeOut()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$Shown;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;->access$200(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 68
    return-void
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
