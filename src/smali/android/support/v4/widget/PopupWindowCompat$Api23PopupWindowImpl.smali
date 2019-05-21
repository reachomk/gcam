.class final Landroid/support/v4/widget/PopupWindowCompat$Api23PopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23PopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$Api21PopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0

    .prologue
    .line 148
    invoke-static {p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 149
    return-void
.end method

.method public final setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0

    .prologue
    .line 158
    invoke-static {p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 159
    return-void
.end method
