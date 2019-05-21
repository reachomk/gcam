.class final Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityEventKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventVersionImpl;-><init>(C)V

    return-void
.end method


# virtual methods
.method public final getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .prologue
    .line 135
    .line 1027
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    .line 135
    return v0
.end method

.method public final setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    .prologue
    .line 130
    .line 1023
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 131
    return-void
.end method
