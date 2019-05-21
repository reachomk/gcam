.class final Landroid/support/v7/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final CHECKED_STATE_SET:[I

.field static final DISABLED_STATE_SET:[I

.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_STATE_SET:[I

.field static final PRESSED_STATE_SET:[I

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 29
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    .line 30
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    .line 32
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    .line 33
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    .line 37
    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    .line 39
    new-array v0, v3, [I

    sput-object v0, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    return-void
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 82
    invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 94
    :goto_0
    return v0

    .line 1099
    :cond_0
    sget-object v0, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 1100
    if-nez v0, :cond_1

    .line 1101
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1102
    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 92
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 1108
    invoke-static {p0, p1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 1109
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 1110
    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    goto :goto_0
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    sget-object v0, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    aput p1, v0, v1

    .line 63
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    invoke-static {p0, v0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->obtainStyledAttributes$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FELQ6IR1F85Q78SJ9C9QN8PAJCLQ3MMQ955662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UL39DPQ58UBGCLI42SJIC5SJM___(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/adobe/xmp/impl/ISO8601Converter;

    move-result-object v0

    .line 65
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/ISO8601Converter;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 67
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->recycle()V

    throw v1
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    sget-object v0, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    aput p1, v0, v1

    .line 73
    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/widget/ThemeUtils;->TEMP_ARRAY:[I

    invoke-static {p0, v0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->obtainStyledAttributes$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FELQ6IR1F85Q78SJ9C9QN8PAJCLQ3MMQ955662RJ4E9NMIP1FEDQN0S3FE9Q2UTHN5TRMIP37CLQ2UL39DPQ58UBGCLI42SJIC5SJM___(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcom/adobe/xmp/impl/ISO8601Converter;

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 77
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->recycle()V

    throw v1
.end method
