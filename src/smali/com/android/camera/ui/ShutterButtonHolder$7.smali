.class final Lcom/android/camera/ui/ShutterButtonHolder$7;
.super Ljava/lang/Object;
.source "ShutterButtonHolder.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ShutterButtonHolder;->hideSelfieFlash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/ShutterButtonHolder;

.field private synthetic val$previousColor:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ShutterButtonHolder;I)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/android/camera/ui/ShutterButtonHolder$7;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    iput p2, p0, Lcom/android/camera/ui/ShutterButtonHolder$7;->val$previousColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 832
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/camera/ui/ShutterButtonHolder$7;->this$0:Lcom/android/camera/ui/ShutterButtonHolder;

    invoke-static {v0}, Lcom/android/camera/ui/ShutterButtonHolder;->access$1400(Lcom/android/camera/ui/ShutterButtonHolder;)Lcom/android/camera/ui/AnimatedCircleDrawable;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/ShutterButtonHolder$7;->val$previousColor:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AnimatedCircleDrawable;->setColor(I)V

    .line 829
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 835
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 824
    return-void
.end method
