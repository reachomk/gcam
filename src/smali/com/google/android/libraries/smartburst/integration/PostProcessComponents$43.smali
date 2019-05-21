.class final Lcom/google/android/libraries/smartburst/integration/PostProcessComponents$43;
.super Ljava/lang/Object;
.source "PostProcessComponents.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/integration/Instantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/integration/PostProcessComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/integration/Instantiator",
        "<[",
        "Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic create(Lcom/google/android/libraries/smartburst/integration/ComponentFactory;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1076
    .line 2079
    const-class v0, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const-string v1, "cropping_layouts"

    .line 2080
    invoke-virtual {p1, v0, v1}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const-class v1, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const-string v2, "noncropping_layouts"

    .line 2081
    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/smartburst/integration/ComponentFactory;->make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    const-class v2, Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    .line 3072
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/google/common/collect/ObjectArrays;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    .line 3073
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3074
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 2079
    check-cast v0, [Lcom/google/android/libraries/smartburst/artifacts/CollageLayout;

    .line 1076
    return-object v0
.end method
