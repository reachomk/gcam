.class public Landroid/support/v7/widget/ActivityChooserView$InnerLayout;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerLayout"
.end annotation


# static fields
.field private static final TINT_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 851
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/ActivityChooserView$InnerLayout;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 856
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 857
    sget-object v0, Landroid/support/v7/widget/ActivityChooserView$InnerLayout;->TINT_ATTRS:[I

    invoke-static {p1, p2, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->obtainStyledAttributes$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FELQ6IR1F85Q78SJ9C9QN8PAJCLQ3MMQ955662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UL39DPQ58UBGCLI42SJIC5SJM___(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/adobe/xmp/impl/ISO8601Converter;

    move-result-object v0

    .line 858
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActivityChooserView$InnerLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->recycle()V

    .line 860
    return-void
.end method
