.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;
.super Ljava/lang/Object;
.source "MetaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final PROCESSING:I = 0x1

.field public static final PULLINPUT:I = 0x0

.field public static final PUSHOUTPUT:I = 0x2


# instance fields
.field public state:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MetaFilter$State;->state:I

    return-void
.end method
