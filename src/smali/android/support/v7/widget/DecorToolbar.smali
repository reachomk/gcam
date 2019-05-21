.class public Landroid/support/v7/widget/DecorToolbar;
.super Ljava/lang/Object;
.source "DecorToolbar.java"


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field mTitle:Ljava/lang/CharSequence;

.field mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 1095
    const/4 v0, 0x1

    const v1, 0x7f0a027f

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/DecorToolbar;-><init>(Landroid/support/v7/widget/Toolbar;ZI)V

    .line 1097
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZI)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 2100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2091
    iput v4, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationContentDescription:I

    .line 2101
    iput-object p1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 2102
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mTitle:Ljava/lang/CharSequence;

    .line 2103
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mSubtitle:Ljava/lang/CharSequence;

    .line 2105
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 2106
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    const v3, 0x7f010031

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adobe/xmp/impl/ISO8601Converter;->obtainStyledAttributes$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FELQ6IR1F85Q78SJ9C9QN8PAJCLQ3MMQ9954IIJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FAHKMST2KF5O6AP21E9P62U9R(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/adobe/xmp/impl/ISO8601Converter;

    move-result-object v0

    .line 2108
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 2109
    if-eqz p2, :cond_c

    .line 2110
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_title:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2112
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2115
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2117
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2120
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_logo:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2121
    if-eqz v1, :cond_2

    .line 2122
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 2125
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_icon:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2126
    if-eqz v1, :cond_3

    .line 2127
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2129
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 2130
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2132
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v0, v1, v4}, Lcom/adobe/xmp/impl/ISO8601Converter;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 2134
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v1, v4}, Lcom/adobe/xmp/impl/ISO8601Converter;->getResourceId(II)I

    move-result v1

    .line 2136
    if-eqz v1, :cond_5

    .line 2137
    iget-object v2, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 2139
    iget v1, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 2142
    :cond_5
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v4}, Lcom/adobe/xmp/impl/ISO8601Converter;->getLayoutDimension(II)I

    move-result v1

    .line 2143
    if-lez v1, :cond_6

    .line 2144
    iget-object v2, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2145
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2146
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2149
    :cond_6
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v1, v5}, Lcom/adobe/xmp/impl/ISO8601Converter;->getDimensionPixelOffset(II)I

    move-result v1

    .line 2151
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v2, v5}, Lcom/adobe/xmp/impl/ISO8601Converter;->getDimensionPixelOffset(II)I

    move-result v2

    .line 2153
    if-gez v1, :cond_7

    if-ltz v2, :cond_8

    .line 2154
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2155
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2154
    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 2158
    :cond_8
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v1, v4}, Lcom/adobe/xmp/impl/ISO8601Converter;->getResourceId(II)I

    move-result v1

    .line 2159
    if-eqz v1, :cond_9

    .line 2160
    iget-object v2, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 2163
    :cond_9
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v1, v4}, Lcom/adobe/xmp/impl/ISO8601Converter;->getResourceId(II)I

    move-result v1

    .line 2165
    if-eqz v1, :cond_a

    .line 2166
    iget-object v2, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 2169
    :cond_a
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v0, v1, v4}, Lcom/adobe/xmp/impl/ISO8601Converter;->getResourceId(II)I

    move-result v1

    .line 2170
    if-eqz v1, :cond_b

    .line 2171
    iget-object v2, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 2176
    :cond_b
    :goto_0
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->recycle()V

    .line 2178
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/DecorToolbar;->setDefaultNavigationContentDescription(I)V

    .line 2179
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mHomeDescription:Ljava/lang/CharSequence;

    .line 2181
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ToolbarWidgetWrapper$1;-><init>(Landroid/support/v7/widget/DecorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2191
    return-void

    .line 2174
    :cond_c
    invoke-direct {p0}, Landroid/support/v7/widget/DecorToolbar;->detectDisplayOptions()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    goto :goto_0
.end method

.method private detectDisplayOptions()I
    .locals 2

    .prologue
    .line 2205
    const/16 v0, 0xb

    .line 2207
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2208
    const/16 v0, 0xf

    .line 2209
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 2211
    :cond_0
    return v0
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2259
    iput-object p1, p0, Landroid/support/v7/widget/DecorToolbar;->mTitle:Ljava/lang/CharSequence;

    .line 2260
    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 2261
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2263
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 3

    .prologue
    .line 2629
    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 2630
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2631
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationContentDescription:I

    .line 2904
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 2636
    :cond_0
    :goto_1
    return-void

    .line 2904
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2633
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateNavigationIcon()V
    .locals 2

    .prologue
    .line 2610
    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 2611
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2615
    :goto_1
    return-void

    .line 2611
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2613
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToolbarLogo()V
    .locals 2

    .prologue
    .line 2321
    const/4 v0, 0x0

    .line 2322
    iget v1, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 2323
    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2324
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 2329
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 2330
    return-void

    .line 2324
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2326
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2539
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 2540
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2542
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/DecorToolbar;->mCustomView:Landroid/view/View;

    .line 2543
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 2544
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2546
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 2195
    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_1

    .line 2202
    :cond_0
    :goto_0
    return-void

    .line 2198
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationContentDescription:I

    .line 2199
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/DecorToolbar;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2384
    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    .line 2385
    xor-int/2addr v0, p1

    .line 2386
    iput p1, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    .line 2387
    if-eqz v0, :cond_4

    .line 2388
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 2389
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 2390
    invoke-direct {p0}, Landroid/support/v7/widget/DecorToolbar;->updateHomeAccessibility()V

    .line 2392
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/DecorToolbar;->updateNavigationIcon()V

    .line 2395
    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    .line 2396
    invoke-direct {p0}, Landroid/support/v7/widget/DecorToolbar;->updateToolbarLogo()V

    .line 2399
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 2400
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 2401
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/DecorToolbar;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2402
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/widget/DecorToolbar;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2409
    :cond_3
    :goto_0
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2410
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 2411
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2417
    :cond_4
    :goto_1
    return-void

    .line 2404
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2405
    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2413
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/DecorToolbar;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 2305
    iput-object p1, p0, Landroid/support/v7/widget/DecorToolbar;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2306
    invoke-direct {p0}, Landroid/support/v7/widget/DecorToolbar;->updateToolbarLogo()V

    .line 2307
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 2316
    iput-object p1, p0, Landroid/support/v7/widget/DecorToolbar;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 2317
    invoke-direct {p0}, Landroid/support/v7/widget/DecorToolbar;->updateToolbarLogo()V

    .line 2318
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 2625
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 2626
    return-void

    .line 2625
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 2619
    iput-object p1, p0, Landroid/support/v7/widget/DecorToolbar;->mHomeDescription:Ljava/lang/CharSequence;

    .line 2620
    invoke-direct {p0}, Landroid/support/v7/widget/DecorToolbar;->updateHomeAccessibility()V

    .line 2621
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 2592
    iput-object p1, p0, Landroid/support/v7/widget/DecorToolbar;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 2593
    invoke-direct {p0}, Landroid/support/v7/widget/DecorToolbar;->updateNavigationIcon()V

    .line 2594
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2272
    iput-object p1, p0, Landroid/support/v7/widget/DecorToolbar;->mSubtitle:Ljava/lang/CharSequence;

    .line 2273
    iget v0, p0, Landroid/support/v7/widget/DecorToolbar;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 2274
    iget-object v0, p0, Landroid/support/v7/widget/DecorToolbar;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2276
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 2255
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DecorToolbar;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 2256
    return-void
.end method
