.class final Lcom/android/camera/burst/editor/AddCreationFabMenu$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AddCreationFabMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/editor/AddCreationFabMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/editor/AddCreationFabMenu;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$5;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 331
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$5;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$500(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/burst/editor/AddCreationFabMenu$5;->this$0:Lcom/android/camera/burst/editor/AddCreationFabMenu;

    invoke-static {v0}, Lcom/android/camera/burst/editor/AddCreationFabMenu;->access$600(Lcom/android/camera/burst/editor/AddCreationFabMenu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 327
    return-void
.end method
