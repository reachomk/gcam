.class Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarshmallowViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1782
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 2810
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1801
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1802
    return-void
.end method

.method public final offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1806
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1807
    return-void
.end method
