.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewPropertyAnimatorCompatImpl"
.end annotation


# instance fields
.field mStarterMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4082
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    .line 4318
    return-void
.end method

.method private postStartMessage(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5347
    const/4 v0, 0x0

    .line 5348
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    if-eqz v1, :cond_0

    .line 5349
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 5351
    :cond_0
    if-nez v0, :cond_2

    .line 5352
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 5353
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    if-nez v1, :cond_1

    .line 5354
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    .line 5356
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5358
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5359
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 5360
    return-void
.end method

.method private removeStartMessage(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 5338
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 5339
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 5340
    if-eqz v0, :cond_0

    .line 5341
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5344
    :cond_0
    return-void
.end method


# virtual methods
.method public alpha(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 2092
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->postStartMessage(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 2093
    return-void
.end method

.method public cancel(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2207
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->postStartMessage(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 2208
    return-void
.end method

.method public setDuration$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHK5TR6IPBN5TB6IPBNA1P6US35E9Q7IGBED5MM2T3FE91MURBGC5Q3MJ31DPI74RR9CGNNCQB5ESNLCQB5ESTKKAAM(Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 1087
    return-void
.end method

.method public setInterpolator$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHK5TR6IPBN5TB6IPBNA1P6US35E9Q7IGBED5MM2T3FE91MURBGC5Q3MJ31DPI74RR9CGNNCQB5ESNLCQB5ESTKOOBECHP6UQB45TR6IPBN5TGMSQBDC5Q6IRRE5T4MST35E9O6UR31EHNN4EP9AO______(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 1121
    return-void
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
    .locals 1

    .prologue
    .line 3285
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3286
    return-void
.end method

.method public setStartDelay$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHK5TR6IPBN5TB6IPBNA1P6US35E9Q7IGBED5MM2T3FE91MURBGC5Q3MJ31DPI74RR9CGNNCQB5ESNLCQB5ESTKKAAM(Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 1131
    return-void
.end method

.method public start(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3268
    invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->removeStartMessage(Landroid/view/View;)V

    .line 3269
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->startAnimation(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 3270
    return-void
.end method

.method startAnimation(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5294
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 5296
    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2

    .line 5297
    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 5299
    :goto_0
    iget-object v2, p1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 5300
    iget-object v2, p1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 5301
    iput-object v1, p1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 5302
    iput-object v1, p1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 5306
    if-eqz v0, :cond_0

    .line 5307
    invoke-interface {v0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 5308
    invoke-interface {v0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 5313
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_1

    .line 5314
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->mStarterMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5316
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public translationX(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 3098
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->postStartMessage(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 3099
    return-void
.end method

.method public translationY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 3104
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->postStartMessage(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 3105
    return-void
.end method
