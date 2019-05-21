.class Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;
.super Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;
.source "OptionsBarExpansionStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Closed"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-direct {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionState;-><init>()V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$002(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;Z)Z

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$100(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$200(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$300(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public expand(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$500(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$400(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->buildOpenAnimation(Landroid/view/View;Ljava/util/Set;)Landroid/animation/Animator;

    move-result-object v1

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    .line 81
    invoke-static {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$500(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$400(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarAnimationBuilder;->buildCloseAnimation(Landroid/view/View;Ljava/util/Set;)Landroid/animation/Animator;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v2, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$602(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$702(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 86
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->verifyNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v2, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$802(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;Landroid/view/View;)Landroid/view/View;

    .line 87
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart$Closed;->this$0:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;

    invoke-static {v0, v3}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;->access$002(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarExpansionStatechart;Z)Z

    .line 89
    return-void
.end method
