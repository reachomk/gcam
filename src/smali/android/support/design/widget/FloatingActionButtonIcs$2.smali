.class final Landroid/support/design/widget/FloatingActionButtonIcs$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButtonIcs;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

.field private synthetic val$fromUser:Z

.field private synthetic val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonIcs;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonIcs$2;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    iput-boolean p2, p0, Landroid/support/design/widget/FloatingActionButtonIcs$2;->val$fromUser:Z

    iput-object p3, p0, Landroid/support/design/widget/FloatingActionButtonIcs$2;->val$listener:Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$2;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/FloatingActionButtonIcs;->mAnimState:I

    .line 140
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonIcs$2;->this$0:Landroid/support/design/widget/FloatingActionButtonIcs;

    iget-object v0, v0, Landroid/support/design/widget/FloatingActionButtonIcs;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/FloatingActionButtonIcs$2;->val$fromUser:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 132
    return-void
.end method
