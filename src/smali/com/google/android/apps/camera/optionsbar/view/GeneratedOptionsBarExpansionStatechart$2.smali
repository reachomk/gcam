.class final Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$2;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closing;
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
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closing;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationComplete()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 40
    invoke-super {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closing;->onAnimationComplete()V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;->access$200(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 42
    return-void
.end method
