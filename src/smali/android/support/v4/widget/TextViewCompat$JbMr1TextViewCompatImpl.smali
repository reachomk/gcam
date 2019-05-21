.class Landroid/support/v4/widget/TextViewCompat$JbMr1TextViewCompatImpl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr1TextViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;-><init>(B)V

    return-void
.end method


# virtual methods
.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 112
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method
