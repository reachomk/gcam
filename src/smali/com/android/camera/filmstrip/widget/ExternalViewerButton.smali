.class public Lcom/android/camera/filmstrip/widget/ExternalViewerButton;
.super Landroid/widget/ImageButton;
.source "ExternalViewerButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private buttonType:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

.field private final clingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;",
            "Lcom/android/camera/widget/Cling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ExtViewerButton"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->INVISIBLE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->buttonType:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->clingMap:Ljava/util/Map;

    .line 39
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->updateClingVisibility()V

    .line 40
    return-void
.end method

.method private updateClingVisibility()V
    .locals 3

    .prologue
    .line 130
    .line 2107
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->clingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/Cling;

    .line 2108
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/Cling;->setVisibility(I)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->clingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->buttonType:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/Cling;

    .line 133
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/android/camera/widget/Cling;->adjustPosition()V

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Cling;->setVisibility(I)V

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public final clearClingForViewer(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;)V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->clingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/Cling;

    .line 65
    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cling does not exist for the given viewer type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->clingMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/Cling;->setReferenceView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final getClingForViewer(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;)Lcom/android/camera/widget/Cling;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->clingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/Cling;

    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onVisibilityChanged(Landroid/view/View;I)V

    .line 45
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->updateClingVisibility()V

    .line 46
    return-void
.end method

.method public final setButtonType(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;)V
    .locals 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->buttonType:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    .line 87
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->INVISIBLE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    if-ne p1, v0, :cond_1

    .line 88
    const/16 v0, 0x8

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->setVisibility(I)V

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 1116
    :cond_1
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->REFOCUS:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    if-ne p1, v0, :cond_2

    .line 1117
    const v0, 0x7f020116

    .line 90
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->setImageResource(I)V

    .line 91
    const/4 v0, 0x0

    goto :goto_0

    .line 1118
    :cond_2
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->PHOTO_SPHERE:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    if-ne p1, v0, :cond_3

    .line 1119
    const v0, 0x7f020112

    goto :goto_2

    .line 1120
    :cond_3
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;->BURST:Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;

    if-ne p1, v0, :cond_4

    .line 1121
    const v0, 0x7f020130

    goto :goto_2

    .line 1123
    :cond_4
    const v0, 0x7f0200cc

    goto :goto_2

    .line 96
    :cond_5
    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->updateClingVisibility()V

    goto :goto_1
.end method

.method public final setClingForViewer(Lcom/android/camera/filmstrip/widget/ExternalViewerButton$ButtonType;Lcom/android/camera/widget/Cling;)V
    .locals 2

    .prologue
    .line 52
    if-nez p2, :cond_0

    .line 53
    sget-object v0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->TAG:Ljava/lang/String;

    const-string v1, "Cannot set a null cling for viewer"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/ExternalViewerButton;->clingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p2, p0}, Lcom/android/camera/widget/Cling;->setReferenceView(Landroid/view/View;)V

    goto :goto_0
.end method
