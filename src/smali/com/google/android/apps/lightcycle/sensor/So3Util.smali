.class public final Lcom/google/android/apps/lightcycle/sensor/So3Util;
.super Ljava/lang/Object;
.source "So3Util.java"


# static fields
.field private static muFromSO3R2:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private static sO3FromTwoVec33R1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private static sO3FromTwoVec33R2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

.field private static sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private static sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private static sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

.field private static temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 23
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 24
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 25
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 26
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec33R1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 27
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec33R2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 28
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;-><init>()V

    sput-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->muFromSO3R2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    return-void
.end method

.method public static muFromSO3(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V
    .locals 14

    .prologue
    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v2

    add-double/2addr v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v8, v0, v2

    .line 108
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v4, v0, v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    sub-double/2addr v0, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v0, v6

    move-object v1, p1

    .line 108
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 113
    invoke-virtual {p1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->length()D

    move-result-wide v0

    .line 114
    const-wide v2, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    cmpl-double v2, v8, v2

    if-lez v2, :cond_1

    .line 116
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    div-double v0, v2, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-wide v2, -0x40195f619980c433L    # -0.7071067811865476

    cmpl-double v2, v8, v2

    if-lez v2, :cond_2

    .line 121
    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 122
    div-double v0, v2, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    goto :goto_0

    .line 127
    :cond_2
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    sub-double v10, v2, v0

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v0

    sub-double v2, v0, v8

    .line 129
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v0

    sub-double v4, v0, v8

    .line 130
    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v0

    sub-double v6, v0, v8

    .line 132
    sget-object v1, Lcom/google/android/apps/lightcycle/sensor/So3Util;->muFromSO3R2:Lcom/google/android/apps/lightcycle/math/Vector3d;

    .line 133
    mul-double v8, v2, v2

    mul-double v12, v4, v4

    cmpl-double v0, v8, v12

    if-lez v0, :cond_4

    mul-double v8, v2, v2

    mul-double v12, v6, v6

    cmpl-double v0, v8, v12

    if-lez v0, :cond_4

    .line 135
    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v0, 0x0

    const/4 v6, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v0, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0, v0, v8}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    .line 144
    :goto_1
    invoke-static {v1, p1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->dot(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3

    .line 145
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    .line 147
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 148
    invoke-virtual {v1, v10, v11}, Lcom/google/android/apps/lightcycle/math/Vector3d;->scale(D)V

    .line 149
    invoke-virtual {p1, v1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    goto/16 :goto_0

    .line 136
    :cond_4
    mul-double v2, v4, v4

    mul-double v8, v6, v6

    cmpl-double v0, v2, v8

    if-lez v0, :cond_5

    .line 138
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v2

    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    const/4 v0, 0x2

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v6

    const/4 v0, 0x1

    const/4 v8, 0x2

    invoke-virtual {p0, v0, v8}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    goto :goto_1

    .line 141
    :cond_5
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v2

    const/4 v0, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v0, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v4

    const/4 v0, 0x1

    const/4 v8, 0x2

    invoke-virtual {p0, v0, v8}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->get(II)D

    move-result-wide v8

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(DDD)V

    goto :goto_1
.end method

.method public static sO3FromMu(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 18

    .prologue
    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->dot(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)D

    move-result-wide v4

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 84
    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 85
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double/2addr v4, v6

    sub-double v4, v2, v4

    .line 86
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 2163
    :goto_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v6, v8

    .line 2164
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v8, v10

    .line 2165
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v10, v12

    .line 2167
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v16, v8, v10

    mul-double v16, v16, v2

    sub-double v14, v14, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 2168
    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v6

    mul-double/2addr v10, v2

    sub-double v10, v14, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v10, v11}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 2169
    const/4 v10, 0x2

    const/4 v11, 0x2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    mul-double/2addr v6, v2

    sub-double v6, v12, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v6, v7}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 2172
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v6, v4

    .line 2173
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v8, v10

    mul-double/2addr v8, v2

    .line 2174
    const/4 v10, 0x0

    const/4 v11, 0x1

    sub-double v12, v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 2175
    const/4 v10, 0x1

    const/4 v11, 0x0

    add-double/2addr v6, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v6, v7}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 2178
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    mul-double/2addr v6, v4

    .line 2179
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v8, v10

    mul-double/2addr v8, v2

    .line 2180
    const/4 v10, 0x0

    const/4 v11, 0x2

    add-double v12, v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 2181
    const/4 v10, 0x2

    const/4 v11, 0x0

    sub-double v6, v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v6, v7}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 2184
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->x:D

    mul-double/2addr v4, v6

    .line 2185
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->y:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/apps/lightcycle/math/Vector3d;->z:D

    mul-double/2addr v6, v8

    mul-double/2addr v2, v6

    .line 2186
    const/4 v6, 0x1

    const/4 v7, 0x2

    sub-double v8, v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 2187
    const/4 v6, 0x2

    const/4 v7, 0x1

    add-double/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->set(IID)V

    .line 98
    return-void

    .line 88
    :cond_0
    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    .line 89
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3fa5555560000000L    # 0.0416666679084301

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    .line 90
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double/2addr v8, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3fc5555560000000L    # 0.1666666716337204

    mul-double/2addr v4, v12

    sub-double v4, v10, v4

    mul-double/2addr v4, v8

    sub-double v4, v6, v4

    goto/16 :goto_0

    .line 92
    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v6, v4, v2

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    .line 94
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double v2, v8, v2

    mul-double/2addr v6, v6

    mul-double/2addr v2, v6

    goto/16 :goto_0
.end method

.method public static sO3FromTwoVec(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 41
    invoke-virtual {p2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setIdentity()V

    .line 42
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->cross(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 43
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->length()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 50
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/math/Vector3d;->set(Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 53
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 54
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 55
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/math/Vector3d;->normalize()V

    .line 57
    sget-object v0, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec33R1:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 58
    sget-object v1, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0, v4, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 59
    sget-object v1, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0, v8, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 60
    sget-object v1, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecA:Lcom/google/android/apps/lightcycle/math/Vector3d;

    sget-object v3, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/lightcycle/math/Vector3d;->cross(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 61
    sget-object v1, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v0, v9, v1}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 63
    sget-object v1, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVec33R2:Lcom/google/android/apps/lightcycle/math/Matrix3x3d;

    .line 64
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 65
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v1, v8, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 66
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecN:Lcom/google/android/apps/lightcycle/math/Vector3d;

    sget-object v3, Lcom/google/android/apps/lightcycle/sensor/So3Util;->sO3FromTwoVecB:Lcom/google/android/apps/lightcycle/math/Vector3d;

    sget-object v4, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/lightcycle/math/Vector3d;->cross(Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;Lcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 67
    sget-object v2, Lcom/google/android/apps/lightcycle/sensor/So3Util;->temp31:Lcom/google/android/apps/lightcycle/math/Vector3d;

    invoke-virtual {v1, v9, v2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->setColumn(ILcom/google/android/apps/lightcycle/math/Vector3d;)V

    .line 1237
    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v2, v2, v8

    .line 1238
    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v6, v5, v10

    aput-wide v6, v4, v8

    .line 1239
    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aput-wide v2, v4, v10

    .line 1241
    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v2, v2, v9

    .line 1242
    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v6, 0x6

    aget-wide v6, v5, v6

    aput-wide v6, v4, v9

    .line 1243
    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aput-wide v2, v4, v5

    .line 1245
    iget-object v2, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    aget-wide v2, v2, v11

    .line 1246
    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    iget-object v5, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v6, 0x7

    aget-wide v6, v5, v6

    aput-wide v6, v4, v11

    .line 1247
    iget-object v4, v0, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->m:[D

    const/4 v5, 0x7

    aput-wide v2, v4, v5

    .line 70
    invoke-static {v1, v0, p2}, Lcom/google/android/apps/lightcycle/math/Matrix3x3d;->mult(Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;Lcom/google/android/apps/lightcycle/math/Matrix3x3d;)V

    goto/16 :goto_0
.end method
