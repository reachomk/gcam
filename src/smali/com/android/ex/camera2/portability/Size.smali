.class public final Lcom/android/ex/camera2/portability/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final val:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/util/Size;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/Size;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .line 1153
    iget-object v1, p1, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 1157
    iget-object v2, p1, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 109
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public static buildListFromAndroidSizes(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/camera2/portability/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 56
    new-instance v3, Lcom/android/ex/camera2/portability/Size;

    invoke-direct {v3, v0}, Lcom/android/ex/camera2/portability/Size;-><init>(Landroid/util/Size;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 162
    instance-of v0, p1, Lcom/android/ex/camera2/portability/Size;

    if-eqz v0, :cond_0

    .line 163
    check-cast p1, Lcom/android/ex/camera2/portability/Size;

    .line 164
    iget-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    iget-object v1, p1, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Point;->hashCode()I

    move-result v0

    return v0
.end method

.method public final height()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2153
    iget-object v1, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2157
    iget-object v1, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final width()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/ex/camera2/portability/Size;->val:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method
