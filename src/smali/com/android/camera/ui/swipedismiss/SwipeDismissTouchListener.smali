.class public final Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private downX:F

.field private downY:F

.field private swiping:Z

.field private swipingSlop:I

.field private translationX:F

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewWidth:I


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 94
    iget v2, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->translationX:F

    invoke-virtual {p2, v2, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 96
    iget v2, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->viewWidth:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 97
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->viewWidth:I

    .line 100
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 211
    :cond_1
    :goto_0
    return v1

    .line 103
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->downX:F

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->downY:F

    .line 107
    invoke-interface {v9}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->canDismiss$5166KOBMC4NMOOBECSNKUOJACLHN8EP9B8______()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->downX:F

    sub-float/2addr v2, v3

    .line 121
    iget-object v3, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 122
    iget-object v3, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 123
    iget-object v3, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 124
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 125
    iget-object v5, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 128
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->viewWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 140
    :goto_1
    if-nez v0, :cond_2

    .line 143
    iget-boolean v0, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->swiping:Z

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 149
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 153
    iput-object v9, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 154
    iput v8, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->translationX:F

    .line 155
    iput v8, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->downX:F

    .line 156
    iput v8, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->downY:F

    .line 157
    iput-boolean v1, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->swiping:Z

    goto/16 :goto_0

    .line 131
    :cond_3
    cmpg-float v6, v8, v4

    if-gtz v6, :cond_8

    cmpg-float v6, v4, v8

    if-gtz v6, :cond_8

    cmpg-float v6, v5, v4

    if-gez v6, :cond_8

    cmpg-float v4, v5, v4

    if-gez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->swiping:Z

    if-eqz v4, :cond_8

    .line 137
    cmpg-float v3, v3, v8

    if-gez v3, :cond_4

    move v3, v0

    :goto_2
    cmpg-float v2, v2, v8

    if-gez v2, :cond_5

    move v2, v0

    :goto_3
    if-ne v3, v2, :cond_6

    .line 138
    :goto_4
    iget-object v2, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    goto :goto_1

    :cond_4
    move v3, v1

    .line 137
    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 168
    iget-object v0, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 169
    iput-object v9, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 170
    iput v8, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->translationX:F

    .line 171
    iput v8, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->downX:F

    .line 172
    iput v8, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->downY:F

    .line 173
    iput-boolean v1, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->swiping:Z

    goto/16 :goto_0

    .line 179
    :pswitch_3
    iget-object v2, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->downX:F

    sub-float/2addr v2, v3

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->downY:F

    sub-float/2addr v3, v4

    .line 186
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v8

    if-lez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 187
    iput-boolean v0, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->swiping:Z

    .line 188
    cmpl-float v3, v2, v8

    iput v1, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->swipingSlop:I

    .line 189
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 192
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/lit8 v4, v4, 0x3

    .line 193
    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 196
    invoke-virtual {v9, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 197
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 200
    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->swiping:Z

    if-eqz v3, :cond_1

    .line 201
    iput v2, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->translationX:F

    .line 202
    iget v1, p0, Lcom/android/camera/ui/swipedismiss/SwipeDismissTouchListener;->swipingSlop:I

    int-to-float v1, v1

    sub-float v1, v2, v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setTranslationX(F)V

    move v1, v0

    .line 206
    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
