.class public final Lcom/android/camera/data/FilmstripItemAttributes;
.super Ljava/lang/Object;
.source "FilmstripItemAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/FilmstripItemAttributes$Builder;,
        Lcom/android/camera/data/FilmstripItemAttributes$Attributes;
    }
.end annotation


# instance fields
.field private final attributes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/camera/data/FilmstripItemAttributes$Attributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/android/camera/data/FilmstripItemAttributes$Builder;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemAttributes$Builder;->build()Lcom/android/camera/data/FilmstripItemAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/camera/data/FilmstripItemAttributes$Attributes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/data/FilmstripItemAttributes;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public final canDelete()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_DELETE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final canEdit()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_EDIT:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final canShare()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SHARE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final canSwipeAway()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_SWIPE_AWAY:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final canZoomInPlace()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->CAN_ZOOM_IN_PLACE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isAnimation()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_ANIMATION:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isBurst()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_BURST:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isImage()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_IMAGE:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isRendering()Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_RENDERING:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isVideo()Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemAttributes;->attributes:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/camera/data/FilmstripItemAttributes$Attributes;->IS_VIDEO:Lcom/android/camera/data/FilmstripItemAttributes$Attributes;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
