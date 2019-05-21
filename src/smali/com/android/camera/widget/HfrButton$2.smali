.class final Lcom/android/camera/widget/HfrButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HfrButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/HfrButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/widget/HfrButton;

.field private synthetic val$callListener:Z

.field private synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/camera/widget/HfrButton;ZI)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/camera/widget/HfrButton$2;->this$0:Lcom/android/camera/widget/HfrButton;

    iput-boolean p2, p0, Lcom/android/camera/widget/HfrButton$2;->val$callListener:Z

    iput p3, p0, Lcom/android/camera/widget/HfrButton$2;->val$state:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton$2;->this$0:Lcom/android/camera/widget/HfrButton;

    iget v1, p0, Lcom/android/camera/widget/HfrButton$2;->val$state:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/HfrButton;->setState(IZ)V

    .line 212
    iget-boolean v0, p0, Lcom/android/camera/widget/HfrButton$2;->val$callListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/HfrButton$2;->this$0:Lcom/android/camera/widget/HfrButton;

    invoke-static {v0}, Lcom/android/camera/widget/HfrButton;->access$300(Lcom/android/camera/widget/HfrButton;)Lcom/android/camera/widget/OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton$2;->this$0:Lcom/android/camera/widget/HfrButton;

    invoke-static {v0}, Lcom/android/camera/widget/HfrButton;->access$300(Lcom/android/camera/widget/HfrButton;)Lcom/android/camera/widget/OnStateChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/widget/HfrButton$2;->val$state:I

    invoke-interface {v0, v1}, Lcom/android/camera/widget/OnStateChangeListener;->stateChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton$2;->this$0:Lcom/android/camera/widget/HfrButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/HfrButton;->setClickable(Z)V

    .line 217
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton$2;->this$0:Lcom/android/camera/widget/HfrButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/HfrButton;->setClickable(Z)V

    .line 203
    iget-boolean v0, p0, Lcom/android/camera/widget/HfrButton$2;->val$callListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/HfrButton$2;->this$0:Lcom/android/camera/widget/HfrButton;

    invoke-static {v0}, Lcom/android/camera/widget/HfrButton;->access$200(Lcom/android/camera/widget/HfrButton;)Lcom/android/camera/widget/OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/camera/widget/HfrButton$2;->this$0:Lcom/android/camera/widget/HfrButton;

    invoke-static {v0}, Lcom/android/camera/widget/HfrButton;->access$200(Lcom/android/camera/widget/HfrButton;)Lcom/android/camera/widget/OnStateChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/HfrButton$2;->this$0:Lcom/android/camera/widget/HfrButton;

    invoke-static {v1}, Lcom/android/camera/widget/HfrButton;->access$000(Lcom/android/camera/widget/HfrButton;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/widget/OnStateChangeListener;->stateChanged$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(I)V

    .line 206
    :cond_0
    return-void
.end method
