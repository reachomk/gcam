.class public final Lcom/android/camera/util/layout/ActivityLayout;
.super Ljava/lang/Object;
.source "ActivityLayout.java"


# instance fields
.field public final activitySize:Lcom/android/camera/util/Size;

.field public final naturalUiOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

.field public final rootViewSize:Lcom/android/camera/util/Size;

.field public final screenSize:Lcom/android/camera/util/Size;

.field public final uiOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

.field public final windowInsets:Landroid/view/WindowInsets;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/android/camera/util/layout/NaturalOrientation;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/view/WindowInsets;Lcom/android/camera/util/Size;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/util/layout/ActivityLayout;->uiOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 27
    iput-object p2, p0, Lcom/android/camera/util/layout/ActivityLayout;->naturalUiOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    .line 28
    iput-object p3, p0, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    .line 29
    iput-object p4, p0, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    .line 30
    iput-object p5, p0, Lcom/android/camera/util/layout/ActivityLayout;->windowInsets:Landroid/view/WindowInsets;

    .line 31
    iput-object p6, p0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 32
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :cond_3
    check-cast p1, Lcom/android/camera/util/layout/ActivityLayout;

    .line 55
    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->uiOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v3, p1, Lcom/android/camera/util/layout/ActivityLayout;->uiOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->naturalUiOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    iget-object v3, p1, Lcom/android/camera/util/layout/ActivityLayout;->naturalUiOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    .line 56
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    iget-object v3, p1, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    .line 57
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    iget-object v3, p1, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    .line 58
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    iget-object v3, p1, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 61
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->uiOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->naturalUiOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    aput-object v2, v0, v1

    .line 1079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 66
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    const-string v1, "ActivityLayoutConfig@"

    invoke-virtual {p0}, Lcom/android/camera/util/layout/ActivityLayout;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "uiOrientation"

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->uiOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "naturalUiOrientation"

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->naturalUiOrientation:Lcom/android/camera/util/layout/NaturalOrientation;

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "screenSize"

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->screenSize:Lcom/android/camera/util/Size;

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "rootViewSize"

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->rootViewSize:Lcom/android/camera/util/Size;

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "windowInsets"

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->windowInsets:Landroid/view/WindowInsets;

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "activitySize"

    iget-object v2, p0, Lcom/android/camera/util/layout/ActivityLayout;->activitySize:Lcom/android/camera/util/Size;

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
