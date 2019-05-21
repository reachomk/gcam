.class final Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$FadingOut;
.source "GeneratedOptionsBarStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;-><init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$FadingOut;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationComplete()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 46
    invoke-super {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$FadingOut;->onAnimationComplete()V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->access$100(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 48
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 53
    invoke-super {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarStatechart$FadingOut;->show()V

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->access$000(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart$2;->this$0:Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;->access$200(Lcom/google/android/apps/camera/optionsbar/view/GeneratedOptionsBarStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 55
    return-void
.end method
