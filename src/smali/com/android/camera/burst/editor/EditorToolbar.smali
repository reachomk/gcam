.class final Lcom/android/camera/burst/editor/EditorToolbar;
.super Ljava/lang/Object;
.source "EditorToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/editor/EditorToolbar$Listener;
    }
.end annotation


# instance fields
.field private defaultToolbarBackground:Landroid/graphics/drawable/Drawable;

.field private final isSecureCamera:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/android/camera/burst/editor/EditorToolbar$Listener;

.field private photosIconId:I

.field private final resources:Landroid/content/res/Resources;

.field private selectionToolbarBackground:Landroid/graphics/drawable/Drawable;

.field private final toolbar:Landroid/widget/Toolbar;

.field private topMenu:Landroid/view/Menu;


# direct methods
.method private constructor <init>(Lcom/android/camera/burst/editor/EditorToolbar$Listener;Landroid/content/res/Resources;Lcom/google/common/base/Supplier;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/editor/EditorToolbar$Listener;",
            "Landroid/content/res/Resources;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->photosIconId:I

    .line 127
    iput-object p1, p0, Lcom/android/camera/burst/editor/EditorToolbar;->listener:Lcom/android/camera/burst/editor/EditorToolbar$Listener;

    .line 128
    iput-object p2, p0, Lcom/android/camera/burst/editor/EditorToolbar;->resources:Landroid/content/res/Resources;

    .line 129
    iput-object p3, p0, Lcom/android/camera/burst/editor/EditorToolbar;->isSecureCamera:Lcom/google/common/base/Supplier;

    .line 131
    const v0, 0x7f11009d

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/burst/editor/EditorToolbar;)Lcom/android/camera/burst/editor/EditorToolbar$Listener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->listener:Lcom/android/camera/burst/editor/EditorToolbar$Listener;

    return-object v0
.end method

.method public static newInitializedInstance(Lcom/android/camera/burst/editor/EditorToolbar$Listener;Landroid/content/res/Resources;Lcom/google/common/base/Supplier;Landroid/view/View;Landroid/content/Context;)Lcom/android/camera/burst/editor/EditorToolbar;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/editor/EditorToolbar$Listener;",
            "Landroid/content/res/Resources;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/camera/burst/editor/EditorToolbar;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Lcom/android/camera/burst/editor/EditorToolbar;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/camera/burst/editor/EditorToolbar;-><init>(Lcom/android/camera/burst/editor/EditorToolbar$Listener;Landroid/content/res/Resources;Lcom/google/common/base/Supplier;Landroid/view/View;)V

    .line 1135
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, v1, Lcom/android/camera/burst/editor/EditorToolbar;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0b01e6

    .line 1136
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->selectionToolbarBackground:Landroid/graphics/drawable/Drawable;

    .line 1138
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    const v2, 0x7f0e01b6

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 1139
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    iget-object v2, v1, Lcom/android/camera/burst/editor/EditorToolbar;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0a02d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    const v2, 0x7f0200ad

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 1141
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    iget-object v2, v1, Lcom/android/camera/burst/editor/EditorToolbar;->resources:Landroid/content/res/Resources;

    const v3, 0x7f0a01e6

    .line 1142
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1141
    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 1143
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    new-instance v2, Lcom/android/camera/burst/editor/EditorToolbar$3;

    invoke-direct {v2, v1}, Lcom/android/camera/burst/editor/EditorToolbar$3;-><init>(Lcom/android/camera/burst/editor/EditorToolbar;)V

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1150
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    const/high16 v2, 0x7f130000

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->inflateMenu(I)V

    .line 1151
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->topMenu:Landroid/view/Menu;

    .line 1153
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->isSecureCamera:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->topMenu:Landroid/view/Menu;

    .line 2044
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    invoke-static {p4}, Lcom/android/camera/util/IntentHelper;->getGalleryIntent(Landroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 2048
    invoke-static {p4, v0, v2}, Lcom/android/camera/util/GalleryHelper;->addPhotosShortcutToToolbar(Landroid/content/Context;Landroid/view/Menu;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 1190
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->photosIconId:I

    .line 1157
    :cond_0
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    new-instance v2, Lcom/android/camera/burst/editor/EditorToolbar$4;

    invoke-direct {v2, v1}, Lcom/android/camera/burst/editor/EditorToolbar$4;-><init>(Lcom/android/camera/burst/editor/EditorToolbar;)V

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 1170
    iget-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/burst/editor/EditorToolbar;->defaultToolbarBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    return-object v1
.end method

.method private final setDeleteIconVisibility(Z)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->topMenu:Landroid/view/Menu;

    const v1, 0x7f1101a1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 181
    return-void
.end method

.method private final setPhotosIconVisibility(Z)V
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->photosIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->topMenu:Landroid/view/Menu;

    iget v1, p0, Lcom/android/camera/burst/editor/EditorToolbar;->photosIconId:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 177
    :cond_0
    return-void
.end method

.method private final setShareIconVisibility(Z)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->topMenu:Landroid/view/Menu;

    const v1, 0x7f1101a0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    return-void
.end method


# virtual methods
.method public final updateToolbarAppearance(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/camera/burst/editor/EditorToolbar;->resources:Landroid/content/res/Resources;

    const v4, 0x7f0a02d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/camera/burst/editor/EditorToolbar;->defaultToolbarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    const v3, 0x7f0200ad

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    new-instance v3, Lcom/android/camera/burst/editor/EditorToolbar$1;

    invoke-direct {v3, p0}, Lcom/android/camera/burst/editor/EditorToolbar$1;-><init>(Lcom/android/camera/burst/editor/EditorToolbar;)V

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->isSecureCamera:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/EditorToolbar;->setPhotosIconVisibility(Z)V

    .line 101
    invoke-direct {p0, v2}, Lcom/android/camera/burst/editor/EditorToolbar;->setDeleteIconVisibility(Z)V

    .line 102
    invoke-direct {p0, v2}, Lcom/android/camera/burst/editor/EditorToolbar;->setShareIconVisibility(Z)V

    .line 120
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    if-ne p1, v1, :cond_3

    .line 104
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    iget-object v3, p0, Lcom/android/camera/burst/editor/EditorToolbar;->selectionToolbarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    const v3, 0x7f0200c0

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setNavigationIcon(I)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    new-instance v3, Lcom/android/camera/burst/editor/EditorToolbar$2;

    invoke-direct {v3, p0}, Lcom/android/camera/burst/editor/EditorToolbar$2;-><init>(Lcom/android/camera/burst/editor/EditorToolbar;)V

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-direct {p0, v2}, Lcom/android/camera/burst/editor/EditorToolbar;->setPhotosIconVisibility(Z)V

    .line 115
    invoke-direct {p0, v1}, Lcom/android/camera/burst/editor/EditorToolbar;->setDeleteIconVisibility(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->isSecureCamera:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/camera/burst/editor/EditorToolbar;->setShareIconVisibility(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/android/camera/burst/editor/EditorToolbar;->toolbar:Landroid/widget/Toolbar;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
