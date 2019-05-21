.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatHCImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 1104
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 100
    invoke-static {p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 101
    return-void
.end method
