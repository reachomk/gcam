.class public final Lcom/google/common/base/Objects;
.super Lcom/google/common/base/ExtraObjectsMethodsForWeb;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Objects$ToStringHelper;
    }
.end annotation


# direct methods
.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 55
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method public static toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/google/common/base/Objects$ToStringHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method
