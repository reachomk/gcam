.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
.super Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
.source "ViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewPropertyAnimatorCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;-><init>()V

    .line 526
    return-void
.end method


# virtual methods
.method public final alpha(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 374
    invoke-static {p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->alpha(Landroid/view/View;F)V

    .line 375
    return-void
.end method

.method public final cancel(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 464
    invoke-static {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->cancel(Landroid/view/View;)V

    .line 465
    return-void
.end method

.method public final setDuration$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHK5TR6IPBN5TB6IPBNA1P6US35E9Q7IGBED5MM2T3FE91MURBGC5Q3MJ31DPI74RR9CGNNCQB5ESNLCQB5ESTKKAAM(Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 369
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->setDuration(Landroid/view/View;J)V

    .line 370
    return-void
.end method

.method public final setInterpolator$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHK5TR6IPBN5TB6IPBNA1P6US35E9Q7IGBED5MM2T3FE91MURBGC5Q3MJ31DPI74RR9CGNNCQB5ESNLCQB5ESTKOOBECHP6UQB45TR6IPBN5TGMSQBDC5Q6IRRE5T4MST35E9O6UR31EHNN4EP9AO______(Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 394
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->setInterpolator(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    .line 395
    return-void
.end method

.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
    .locals 1

    .prologue
    .line 504
    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 505
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->setListener(Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 506
    return-void
.end method

.method public final setStartDelay$51662RJ4E9NMIP1FEDQN0S3FE9Q2UTHK5TR6IPBN5TB6IPBNA1P6US35E9Q7IGBED5MM2T3FE91MURBGC5Q3MJ31DPI74RR9CGNNCQB5ESNLCQB5ESTKKAAM(Landroid/view/View;J)V
    .locals 0

    .prologue
    .line 399
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->setStartDelay(Landroid/view/View;J)V

    .line 400
    return-void
.end method

.method public final start(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 499
    invoke-static {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->start(Landroid/view/View;)V

    .line 500
    return-void
.end method

.method public final translationX(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 379
    invoke-static {p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->translationX(Landroid/view/View;F)V

    .line 380
    return-void
.end method

.method public final translationY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 384
    invoke-static {p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->translationY(Landroid/view/View;F)V

    .line 385
    return-void
.end method
