.class public final Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;
.super Ljava/lang/Object;
.source "PreviewContentAdapterLogWrapper.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewContentAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adapter:Lcom/android/camera/ui/PreviewContentAdapter;

.field private final logPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "PrevConAdaptLogger"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/camera/ui/PreviewContentAdapter;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    .line 27
    iput-object p1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public final addAspectRatioChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;)V
    .locals 6

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "addAspectRatioChangedListener(listener = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->addAspectRatioChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;)V

    .line 53
    return-void
.end method

.method public final addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 6

    .prologue
    .line 90
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "addPreviewAreaSizeChangedListener(listener = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 92
    return-void
.end method

.method public final clearTransform()V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clearTransform()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->clearTransform()V

    .line 40
    return-void
.end method

.method public final getPreviewArea()Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->getPreviewArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "getPreviewArea() returns RectF = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method public final getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "getPreviewBitmap(downsample = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ) returns RectF = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method public final getViewHeight()I
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->getViewHeight()I

    move-result v0

    .line 124
    sget-object v1, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x29

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getViewHeight() returns int = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return v0
.end method

.method public final getViewWidth()I
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->getViewWidth()I

    move-result v0

    .line 117
    sget-object v1, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getViewWidth() returns int = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return v0
.end method

.method public final onModuleActivate()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onModuleActivate()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->onModuleActivate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final onModuleDeactivate()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onModuleDeactivate()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->onModuleDeactivate()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 6

    .prologue
    .line 97
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "removePreviewAreaSizeChangedListener(listener = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 99
    return-void
.end method

.method public final requestLayout()V
    .locals 3

    .prologue
    .line 110
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestLayout()"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/PreviewContentAdapter;->requestLayout()V

    .line 112
    return-void
.end method

.method public final setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 6

    .prologue
    .line 63
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "setOnLayoutChangeListener(listener = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 65
    return-void
.end method

.method public final updateAspectRatio(F)V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updateAspectRatio(aspectRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->updateAspectRatio(F)V

    .line 46
    return-void
.end method

.method public final updateTransform(Landroid/graphics/Matrix;)V
    .locals 6

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->logPrefix:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "updateTransform(matrix ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/PreviewContentAdapterLogWrapper;->adapter:Lcom/android/camera/ui/PreviewContentAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/PreviewContentAdapter;->updateTransform(Landroid/graphics/Matrix;)V

    .line 59
    return-void
.end method
