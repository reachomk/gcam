.class final Landroid/support/v7/widget/DefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Landroid/support/v7/widget/DefaultItemAnimator;

.field private synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v7, v1, 0x1

    check-cast v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;

    .line 121
    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v2, v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v3, v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromX:I

    iget v4, v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->fromY:I

    iget v5, v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toX:I

    iget v0, v0, Landroid/support/v7/widget/DefaultItemAnimator$MoveInfo;->toY:I

    .line 1273
    iget-object v9, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1274
    sub-int v3, v5, v3

    .line 1275
    sub-int v4, v0, v4

    .line 1276
    if-eqz v3, :cond_0

    .line 1277
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1279
    :cond_0
    if-eqz v4, :cond_1

    .line 1280
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1285
    :cond_1
    invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 1286
    iget-object v0, v1, Landroid/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    invoke-virtual {v1}, Landroid/support/v7/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v9

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator$6;

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/DefaultItemAnimator$6;-><init>(Landroid/support/v7/widget/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v9, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 1308
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    move v1, v7

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    iget-object v0, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->this$0:Landroid/support/v7/widget/DefaultItemAnimator;

    iget-object v0, v0, Landroid/support/v7/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/DefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method
