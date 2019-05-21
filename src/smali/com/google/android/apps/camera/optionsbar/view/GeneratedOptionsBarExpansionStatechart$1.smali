.class final Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$1;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;
.source "GeneratedOptionsBarExpansionStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;-><init>(Landroid/view/View;Landroid/view/View;Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$1;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)V

    return-void
.end method


# virtual methods
.method public final expand(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$1;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 31
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->expand(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$1;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$1;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->access$100(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 33
    return-void
.end method
